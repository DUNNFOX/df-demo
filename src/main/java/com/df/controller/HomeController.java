package com.df.controller;


import com.df.entity.Student;
import com.df.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

    @Autowired
    StudentRepository studentRepository;

    @GetMapping("/admin")
    public String admin() {
        return "test";
    }

    @PostMapping("/createUser")
    public String createUser(Model model, @RequestParam String firstName, @RequestParam String lastName,
                             @RequestParam String mobile,
                             @RequestParam String email) {
        Student st = new Student();
        st.setEmail(email);
        st.setFirstName(firstName);
        st.setLastName(lastName);
        st.setMobile(mobile);
        studentRepository.save(st);
        model.addAttribute("msg", "user added successfully");
        return "test";
    }
}
