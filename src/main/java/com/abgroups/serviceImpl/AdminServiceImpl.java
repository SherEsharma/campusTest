package com.abgroups.serviceImpl;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abgroups.model.Admin;
import com.abgroups.repository.AdminRepository;
import com.abgroups.service.AdminService;
@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminRepository adminrepo;

	private Logger logger= Logger.getLogger(AdminServiceImpl.class);
	public Admin adminLogin(Admin admin){
		Admin loginresult=null;
		try{
			loginresult=	adminrepo.findByEmailAndPassword(admin.getEmail(), admin.getPassword());
		}catch (Exception e) {
			// TODO: handle exception
			logger.error("adminLoginFail"+loginresult, e);
		}
		return loginresult;
	}
}
