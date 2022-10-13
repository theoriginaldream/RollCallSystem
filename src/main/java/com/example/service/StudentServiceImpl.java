package com.example.service;

import com.example.dao.StudentMapper;
import com.example.pojo.Student;

import java.util.List;

public class StudentServiceImpl implements StudentService{

    private StudentMapper studentMapper;

    public void setStudentMapper(StudentMapper studentMapper) {
        this.studentMapper = studentMapper;
    }

    @Override
    public int addStudent(Student student) {
        return studentMapper.addStudent(student);
    }

    @Override
    public int deleteStudent(String id) {
        return studentMapper.deleteStudent(id);
    }

    @Override
    public int updateStudent(Student student) {
        return studentMapper.updateStudent(student);
    }

    @Override
    public Student queryStudentByID(String id) {
        return studentMapper.queryStudentByID(id);
    }

    @Override
    public List<Student> queryStudentByName(String name) {
        return studentMapper.queryStudentByName(name);
    }

    @Override
    public List<Student> queryAllStudent() {
        return studentMapper.queryAllStudent();
    }

    @Override
    public List<Student> querySignOutStudent() {
        return studentMapper.querySignOutStudent();
    }
}
