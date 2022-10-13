package com.example.service;

import com.example.pojo.Student;

import java.util.List;

public interface StudentService {
    int addStudent(Student student);

    int deleteStudent(String id);

    int updateStudent(Student student);

    Student queryStudentByID(String id);

    List<Student> queryStudentByName(String name);

    List<Student> queryAllStudent();

    List<Student> querySignOutStudent();
}
