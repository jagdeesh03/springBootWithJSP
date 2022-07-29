package com.aarif.demo.controller;

import com.aarif.demo.model.Employee;
import com.aarif.demo.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RestController
public class Controller {
    @Autowired
    private EmployeeService employeeServices;
  @GetMapping(path = "/loginpage")
    public ModelAndView getloginpage(Model model) {

        return new ModelAndView("loginPage");
    }
    @RequestMapping(path="/getIndex")
    public ModelAndView getIndex(@RequestParam("email") String email,@RequestParam("password") String password) {
        List<Employee> emp =  employeeServices.getall();
        Employee emailid = employeeServices.findByemail(email);
        Employee passWord = employeeServices.findBypassword(password);
        for(int i=0;i < emp.size()-1;i++) {
            if (emailid.getEmail().equals(emp.get(i).getEmail()) && passWord.getPassword().equals(emp.get(i).getPassword())) {
                return  new ModelAndView("redirect:indexpage");
            }
        }
        return new ModelAndView("redirect:userCreation");
    }

    @RequestMapping(path = "/indexpage")
    public ModelAndView getIndexPage() {
        return new ModelAndView("index");
    }

    @RequestMapping(path ="/getValue", method = RequestMethod.POST,consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public ModelAndView userpage(@ModelAttribute("user") Employee emp) {
        System.out.println("eafcewfgv ,........"+emp.getUserRole());
        employeeServices.addNewItem(emp);
        return new ModelAndView("redirect:userCreation");
    }

    @RequestMapping(path = "/userCreation")
    public ModelAndView getUserPage() {
        return new ModelAndView("userCreation");
    }

    @RequestMapping(path="/listAllUser",method = RequestMethod.GET)
    public ModelAndView getAlluser(Model model) {
        List<Employee> employeeList = employeeServices.getall();
        System.out.println(employeeList.size());
        model.addAttribute("users",employeeList);
        return new ModelAndView("listAllUser");

    }


    @RequestMapping(path="/removedUser",method = RequestMethod.GET)
    public ModelAndView getAll(Model model) {

        List<Employee> employeeList = employeeServices.getall();
        System.out.println(employeeList.size());
        model.addAttribute("users",employeeList);
        return new ModelAndView("RemoveUser");

    }

    @RequestMapping(value ="/removeUser" , method = RequestMethod.POST)
    public ModelAndView removeUser(@RequestParam("userName") String username) {
        System.out.println(username);
        employeeServices.removeByUserName(username);
        return new ModelAndView("redirect:removedUser");

    }

    @RequestMapping(value = "/updateUser",method = RequestMethod.GET)
    public ModelAndView updateUser(Model model) {
        List<Employee> employeeList = employeeServices.getall();
        System.out.println(employeeList.size());
        model.addAttribute("users",employeeList);
        return new ModelAndView("UserUpdate");
    }

    Employee emp = new Employee();
    @RequestMapping(value="/update" , method=RequestMethod.POST)
    public ModelAndView updateUserChoice(@RequestParam("userName") String username,Model model) {

        Employee employeeDetails = employeeServices.findByUserName(username);
        emp = employeeDetails;
        System.out.println(employeeDetails.getUserName());
        model.addAttribute("users",employeeDetails);

        return new ModelAndView("updateUserForm");
    }

    @RequestMapping(value = "updated" ,method=RequestMethod.POST)
    public ModelAndView updatePage(@ModelAttribute("users") Employee emp2) {


        System.out.println("userName"+emp.getUserName());
        System.out.println("firstName"+emp.getFirstName());
        System.out.println("lastName"+emp.getLastName());
        System.out.println("password"+emp.getPassword());
        System.out.println("--------------------------");

        System.out.println("firstName "+emp2.getFirstName());
        System.out.println("lastName "+emp2.getLastName());
        System.out.println("password "+emp2.getPassword());



        emp.setFirstName(emp2.getFirstName());
        emp.setLastName(emp2.getLastName());
        emp.setEmail(emp2.getEmail());
        emp.setPassword(emp2.getPassword());

        System.out.println("---------------------");
        System.out.println("firstName"+emp.getFirstName());
        System.out.println("lastName"+emp.getLastName());
        System.out.println("password"+emp.getPassword());

        employeeServices.addUpdatedIten(emp);


        return new ModelAndView("redirect:indexpage");
    }
}
