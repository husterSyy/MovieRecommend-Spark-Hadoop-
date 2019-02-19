package user;

import java.util.List;

import product.Product;
import utils.MailUtils;
import utils.PageBean;
import utils.UUIDUtils;

import org.springframework.transaction.annotation.Transactional;

/**
 * 用户模块:业务层代码
 * @author 
 *
 */
@Transactional
public class UserService {
	// 注入Dao
	private UserDao userDao;

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	/**
	 * 业务层注册用户的代码
	 * @param user
	 */
	public void regist(User user) {
		// 保存用户:
		user.setState(0);// 0 未激活  1已经激活.
		String code = UUIDUtils.getUUID()+UUIDUtils.getUUID();//生成激活码
		user.setCode(code);
		userDao.save(user);
		// 发送邮件:
		try {
			MailUtils.sendMail(user.getEmail(), code);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 业务层根据激活码查询用户 的方法
	public User findByCode(String code) {
		return userDao.findByCode(code);
	}

	// 业务层修改用户的方法
	public void update(User existUser) {
		userDao.update(existUser);
	}

	// 业务层登录的方法
	public User login(User user) {
		return userDao.login(user);
	}

	public User findByUserName(String username) {
		return userDao.findByUserName(username);
	}

	public  PageBean<User> findByPage(Integer page) {
		// 分类页面的显示商品的方法
		// 封装PageBean对象.
				PageBean<User> pageBean = new PageBean<User>();
				int limit = 10;//每页显示的记录数
				pageBean.setPage(page);
				pageBean.setLimit(limit);
				// 总记录数
				int totalCount = userDao.findCount();
				pageBean.setTotalCount(totalCount);
				// 总页数:
				int totalPage = 0;
				if(totalCount % limit == 0){
					totalPage = totalCount / limit;
				}else{
					totalPage = totalCount / limit+1;
				}
				pageBean.setTotalPage(totalPage);
				// 每页显示数据的集合:
				//int begin = (page -1 )*limit;
				int begin=0;
				List<User> list = userDao.findByPage(begin, limit);
				pageBean.setList(list);
				return pageBean;
	}
	
}
