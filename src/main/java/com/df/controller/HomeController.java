package com.df.controller;


import com.df.entity.Student;
import com.df.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Optional;

@Controller
public class HomeController {

    @Autowired
    StudentRepository studentRepository;

    @GetMapping("/admin")
    public String admin(Model model) {
        model.addAttribute("users", studentRepository.findAll());
        return "test";
    }

    @PostMapping("/createUser")
    public String createUser(Model model, @RequestParam String firstName, @RequestParam String lastName,
                             @RequestParam String mobile,
                             @RequestParam String email, @RequestParam String id) {
        Student st = new Student();
        if( !(id.isBlank() || id.isEmpty()) ) st.setId(Integer.parseInt(id));
        st.setEmail(email);
        st.setFirstName(firstName);
        st.setLastName(lastName);
        st.setMobile(mobile);
        studentRepository.save(st);
        model.addAttribute("msg", "user added successfully");
        model.addAttribute("users", studentRepository.findAll());
        return "test";
    }

    @PostMapping("/deleteStudent")
    public String deleteStudent(Model model, @RequestParam int id) {
        if (id <= 0) {
            model.addAttribute("msg", "invalid student id");
            return "test";
        }
        studentRepository.deleteById(id);
        model.addAttribute("msg", "User Delete Successfully");
        model.addAttribute("users", studentRepository.findAll());
        return "test";
    }
    @PostMapping("/updateStudent")
    public String updateStudent(Model model, @RequestParam int id){
        model.addAttribute("users", studentRepository.findAll());
        if (id <= 0) {
            model.addAttribute("msg", "invalid student id");
            return "test";
        }
        Student st = studentRepository.findById(id);
        if(st !=null){
            model.addAttribute("student", st);
            model.addAttribute("id", st.getId());
            return "test";
        }
        model.addAttribute("msg", "User Not Found");
        return "test";
    }
}
