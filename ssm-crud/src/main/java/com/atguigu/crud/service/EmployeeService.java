package com.atguigu.crud.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;


import com.atguigu.crud.been.Employee;
import com.atguigu.crud.dao.EmployeeMapper;
@Service
public class EmployeeService {
@Autowired	
EmployeeMapper employeeMapper;

public List<Employee> getAll() {
	// TODO Auto-generated method stub
	return employeeMapper.selectByExampleWithDept(null);
}



	
}
