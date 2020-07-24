package com.tzxy.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.tzxy.domain.Admin;
import com.tzxy.utils.JdbcUtil;

public class adminDao {
	private QueryRunner qr = new QueryRunner(JdbcUtil.getDataSource());
	public int registerAdmin(Admin admin) throws SQLException {
		String sql="insert into admin(ausername,apassword,aemail,acode) values(?,?,?,?)";
		int update = qr.update(sql,admin.getAusername(),admin.getApassword(),admin.getAemail(),admin.getAcode());
		return update;
		
	}
	public List<Admin> getAllAdmin() throws SQLException {
		String sql="select * from admin";
		List<Admin> query = qr.query(sql, new BeanListHandler<Admin>(Admin.class));
		return query;
	}

}
