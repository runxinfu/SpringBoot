package com.uton.admin.system.dao;

import com.uton.admin.common.config.MyMapper;
import com.uton.admin.system.domain.Role;
import com.uton.admin.system.domain.RoleWithMenu;

import java.util.List;

public interface RoleMapper extends MyMapper<Role> {
	
	List<Role> findUserRole(String userName);
	
	List<RoleWithMenu> findById(Long roleId);
}