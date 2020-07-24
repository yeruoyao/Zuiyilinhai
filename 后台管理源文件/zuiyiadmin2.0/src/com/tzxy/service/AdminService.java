package com.tzxy.service;

import java.sql.SQLException;
import java.util.List;

import com.tzxy.dao.adminDao;
import com.tzxy.domain.Admin;

public class AdminService {
	private adminDao dao = new adminDao();
	public boolean registerAdmin(Admin admin) throws SQLException {
		int registerAdmin = dao.registerAdmin(admin);
		return registerAdmin>0?true:false;
	}
	public List<Admin> getAllAdmin() throws SQLException {
		List<Admin> allAdmin = dao.getAllAdmin();
		return allAdmin;
		
	}

}
