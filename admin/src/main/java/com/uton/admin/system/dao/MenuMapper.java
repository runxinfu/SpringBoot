package com.uton.admin.system.dao;

import com.uton.admin.common.config.MyMapper;
import com.uton.admin.system.domain.Menu;

import java.util.List;

public interface MenuMapper extends MyMapper<Menu> {
	
	List<Menu> findUserPermissions(String userName);
	
	List<Menu> findUserMenus(String userName);
	
	// 删除父节点，子节点变成顶级节点（根据实际业务调整）
	void changeToTop(List<String> menuIds);
}