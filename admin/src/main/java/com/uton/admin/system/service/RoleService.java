package com.uton.admin.system.service;

import com.uton.admin.common.service.IService;
import com.uton.admin.system.domain.Role;
import com.uton.admin.system.domain.RoleWithMenu;

import java.util.List;

public interface RoleService extends IService<Role> {

	List<Role> findUserRole(String userName);

	List<Role> findAllRole(Role role);
	
	RoleWithMenu findRoleWithMenus(Long roleId);

	Role findByName(String roleName);

	void addRole(Role role, Long[] menuIds);
	
	void updateRole(Role role, Long[] menuIds);

	void deleteRoles(String roleIds);
}
