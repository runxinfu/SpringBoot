package com.uton.admin.system.service;

import com.uton.admin.common.domain.Tree;
import com.uton.admin.common.service.IService;
import com.uton.admin.system.domain.Dept;

import java.util.List;

public interface DeptService extends IService<Dept> {

	Tree<Dept> getDeptTree();

	List<Dept> findAllDepts(Dept dept);

	Dept findByName(String deptName);

	Dept findById(Long deptId);
	
	void addDept(Dept dept);
	
	void updateDept(Dept dept);

	void deleteDepts(String deptIds);
}
