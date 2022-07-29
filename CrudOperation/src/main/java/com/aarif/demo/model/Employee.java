package com.aarif.demo.model;

import javax.persistence.*;

@Entity
@Table(name = "employee")
public class Employee {
    @Id
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   private  int userId;
   private  String firstName;


   public int getUserId() {
      return userId;
   }



   public void setUserId(int userId) {
      this.userId = userId;
   }

   private  String lastName;
   private  String email;
   private  String password;


   @Column(name = "user_name")
   private  String userName;

   private String userRole;


   public String getFirstName() {
      return firstName;
   }

   public void setFirstName(String firstName) {
      this.firstName = firstName;
   }

   public String getLastName() {
      return lastName;
   }

   public void setLastName(String lastName) {
      this.lastName = lastName;
   }

   public String getEmail() {
      return email;
   }

   public void setEmail(String email) {
      this.email = email;
   }

   public String getPassword() {
      return password;
   }

   public void setPassword(String password) {
      this.password = password;
   }

   public String getUserName() {
      return userName;
   }

   public void setUserName(String userName) {
      this.userName = userName;
   }





   public String getUserRole() {
      return userRole;
   }

   public void setUserRole(String userRole) {
      this.userRole = userRole;
   }
   @Override
   public String toString() {
      return "Employee{" +
              "userId=" + userId +
              ", firstName='" + firstName + '\'' +
              ", lastName='" + lastName + '\'' +
              ", email='" + email + '\'' +
              ", password='" + password + '\'' +
              ", userName='" + userName + '\'' +
              ", userRole='" + userRole + '\'' +
              '}';
   }
}
