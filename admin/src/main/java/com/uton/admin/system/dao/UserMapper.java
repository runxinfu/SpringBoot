package com.uton.admin.system.dao;

import com.uton.admin.common.config.MyMapper;
import com.uton.admin.system.domain.User;
import com.uton.admin.system.domain.UserWithRole;

import java.util.List;

public interface UserMapper extends MyMapper<User> {

	List<User> findUserWithDept(User user);
	
	List<UserWithRole> findUserWithRole(Long userId);
	
	User findUserProfile(User user);
}