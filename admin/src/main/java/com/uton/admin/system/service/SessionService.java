package com.uton.admin.system.service;

import com.uton.admin.system.domain.UserOnline;

import java.util.List;

public interface SessionService {

	List<UserOnline> list();

	boolean forceLogout(String sessionId);
}
