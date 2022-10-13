package com.example.dao;

import org.apache.ibatis.annotations.Param;
import com.example.pojo.Student;

import java.util.List;

public interface StudentMapper {
    // 增加学生
    int addStudent(Student student);

    // 删除学生
    int deleteStudent(@Param("id") String id);

    // 修改学生信息
    int updateStudent(Student student);

    // 根据id查询一个学生
    Student queryStudentByID(@Param("id") String id);

    // 根据名字查询学生
    List<Student> queryStudentByName(String name);

    // 查询全部的学生
    List<Student> queryAllStudent();

    // 查询缺勤的学生
    List<Student> querySignOutStudent();
}
