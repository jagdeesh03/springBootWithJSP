package com.aarif.demo.service;


import com.aarif.demo.Repo.Empdao;

import com.aarif.demo.model.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class EmployeeService {
    @Autowired
    private Empdao emprepo;


    public void addNewItem(Employee em) {
        System.out.println("hi---------------"+em.getLastName());
        Employee emp = new Employee();
        emp.setFirstName(em.getFirstName());
        emp.setLastName(em.getLastName());
        emp.setUserName(em.getUserName());
        emp.setPassword(em.getPassword());
        emp.setEmail(em.getEmail());
        System.out.println("ssssssssssss.................   "+em.getUserRole());
        emp.setUserRole(em.getUserRole());
        emprepo.save(emp);
    }

    public List<Employee> getall() {

        List<Employee> listall = (List<Employee>) emprepo.findAll();

        return listall;
    }

    public void removeByUserName(String userName) {
        emprepo.deleteByuserName(userName);
    }

    public Employee findByUserName(String username) {
        return emprepo.findByUserName(username);
    }



    public Employee findusers(String userName) {
          return emprepo.findByUserName(userName);
     }


    public void addUpdatedIten(Employee emp) {
        emprepo.save(emp);
    }

    public Employee findByemail(String email) {
        return emprepo.findByemail(email);
    }

    public Employee findBypassword(String password) {
        return emprepo.findBypassword(password);
    }
}
