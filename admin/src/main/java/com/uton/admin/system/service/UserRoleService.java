package com.uton.admin.system.service;

import com.uton.admin.common.service.IService;
import com.uton.admin.system.domain.UserRole;

public interface UserRoleService extends IService<UserRole> {

	void deleteUserRolesByRoleId(String roleIds);

	void deleteUserRolesByUserId(String userIds);
}
