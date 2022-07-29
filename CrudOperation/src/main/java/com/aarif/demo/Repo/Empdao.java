package com.aarif.demo.Repo;

import com.aarif.demo.model.Employee;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface Empdao extends CrudRepository<Employee,Long> {


    void deleteByuserName(String userName);

    Employee findByUserName(String username);

    Employee findByemail(String email);

    Employee findBypassword(String password);
}
