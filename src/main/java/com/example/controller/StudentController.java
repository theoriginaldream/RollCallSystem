package com.example.controller;

import com.example.pojo.Student;
import com.example.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.*;

@Controller
@RequestMapping("/student")
public class StudentController {

    @Autowired
    @Qualifier("studentServiceImpl")
    private StudentService studentService;

    public List<Integer> randomStudentIndexList = new ArrayList<>();

    @RequestMapping("/allStudent")
    public String list(Model model){
        List<Student> list = studentService.queryAllStudent();
        randomStudentIndexList.clear();
        model.addAttribute("list",list);
        return "allStudent";
    }

    @RequestMapping("/toAddStudent")
    public String toAddPaper(){
        return "addStudent";
    }

    @RequestMapping("/addStudent")
    public String addStudent(Student student){
        studentService.addStudent(student);
        return "redirect:/student/allStudent";
    }

    @RequestMapping("/toUpdateStudent")
    public String toUpdatePaper(String id, Model model){
        Student student = studentService.queryStudentByID(id);
        model.addAttribute("qStudent",student);
        return "updateStudent";
    }

    @RequestMapping("/updateStudent")
    public String updateStudent(Student student){
        studentService.updateStudent(student);
        return "redirect:/student/allStudent";
    }

    @RequestMapping("/deleteStudent/{id}")
    public String deleteStudent(@PathVariable("id") String id){
        studentService.deleteStudent(id);
        return "redirect:/student/allStudent";
    }

    @RequestMapping("/queryStudent")
    public String queryBook(String query,Model model){
        Student student1 = studentService.queryStudentByID(query);
        List<Student> student2 = studentService.queryStudentByName(query);
        List<Student> list = new ArrayList<>();
        list.add(student1);
        list.addAll(student2);

        model.addAttribute("list",list);
        return "allStudent";
    }

    @RequestMapping("/randomStudent")
    public String randomStudent(Model model){
        List<Student> students = studentService.queryAllStudent();
        int index = (int) (Math.random()*students.size());
        Student student = students.get(index);
        List<Student> studentList = new ArrayList<>();
        studentList.add(student);
        randomStudentIndexList.clear();
        randomStudentIndexList.add(index);
        model.addAttribute("list",studentList);
        return "allStudent";
    }

    @RequestMapping("/randomSomeStudent")
    public String orderStudent(int num, Model model){
        List<Student> students = studentService.queryAllStudent();
        Map<Integer, Student> map = new HashMap<>();
        randomStudentIndexList.clear();
        for (int i = 0; i < num; i++) {
            int index;
            do {
                index = (int) (Math.random() * students.size());
            } while (map.get(index) != null);
            Student student = students.get(index);
            randomStudentIndexList.add(index);
            map.put(index, student);
        }
        model.addAttribute("list",new ArrayList<>(map.values()));
        return "allStudent";
    }

    @RequestMapping("/signInStatus")
    public String signInStatus(String id, Model model){
        Student student = studentService.queryStudentByID(id);
        student.setStatus("已到");
        studentService.updateStudent(student);
        List<Student> students = studentService.queryAllStudent();
        if (randomStudentIndexList.size()!=0){
            List<Student> students2 = new ArrayList<>();
            for (Integer integer : randomStudentIndexList) {
                students2.add(students.get(integer));
            }
            model.addAttribute("list",students2);
        }else {
            model.addAttribute("list",students);
        }
        return "allStudent";
    }

    @RequestMapping("/signOutStatus")
    public String signOutStatus(String id, Model model){
        Student student = studentService.queryStudentByID(id);
        student.setStatus("缺勤");
        studentService.updateStudent(student);
        List<Student> students = studentService.queryAllStudent();
        if (randomStudentIndexList.size()!=0){
            List<Student> students2 = new ArrayList<>();
            for (Integer integer : randomStudentIndexList) {
                students2.add(students.get(integer));
            }
            model.addAttribute("list",students2);
        }else {
            model.addAttribute("list",students);
        }
        return "allStudent";
    }

    @RequestMapping("/initStudent")
    public String initStudent(Model model){
        List<Student> studentList = studentService.queryAllStudent();
        for (Student student : studentList) {
            student.setStatus("未点");
            studentService.updateStudent(student);
        }
        return "redirect:/student/allStudent";
    }

    @RequestMapping("/querySignOut")
    public String querySignOut(Model model){
        List<Student> studentList = studentService.querySignOutStudent();
        model.addAttribute("list",studentList);
        return "allStudent";
    }

}
