package com.df.controller;

import com.df.entity.User;
import com.df.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class FormController {

    @Autowired
    UserRepository userRepository;

    @GetMapping("/user")
    public String user(){
        return "userpage";

    }

    @PostMapping("/register")
    public String register(Model model,@RequestParam String firstName, @RequestParam String lastName,
                           @RequestParam String mobile,
                           @RequestParam String email,@RequestParam String gender, @RequestParam String dob,
                           @RequestParam String address,
                           @RequestParam int age ) {

        User user = new User();
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setMobile(mobile);
        user.setEmail(email);
        user.setAddress(address);
        user.setGender(gender);
        user.setDob(dob);
        user.setAge(age);
        userRepository.save(user);
        model.addAttribute("msg", "user added successfully");
        return "userpage";
    }
}
