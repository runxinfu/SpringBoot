package com.uton.admin.system.service;

import com.uton.admin.common.service.IService;
import com.uton.admin.system.domain.RoleMenu;

public interface RoleMenuServie extends IService<RoleMenu> {

	void deleteRoleMenusByRoleId(String roleIds);

	void deleteRoleMenusByMenuId(String menuIds);
}
