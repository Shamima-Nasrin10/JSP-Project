
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Teacher;
import util.DBUtil;

public class TeacherDAO {
    
     private static DBUtil dBUtil = new DBUtil();
    private static PreparedStatement ps;
    private static Connection connection;

    public static int saveTeacher(Teacher teacher) {
        int result = 0;
        try {
            String sql = "insert into teacher(name, department, gender) values(?, ?, ?);";

            connection = dBUtil.getConnection();
            ps = connection.prepareStatement(sql);
            ps.setString(1, teacher.getName());
            ps.setString(2, teacher.getDepartment());
            ps.setString(3, teacher.getGender());

            result = ps.executeUpdate();
            ps.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
    
    
    public static List<Teacher> teacherList() {
        List<Teacher> teacherList = new ArrayList<>();
        try {
            String sql = "select * from teacher;";

            connection = dBUtil.getConnection();
            ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Teacher teacher = new Teacher(
                        rs.getLong("id"),
                        rs.getString("name"),
                        rs.getString("department"),
                        rs.getString("gender")
                );
                teacherList.add(teacher);
            }

            rs.close();
            ps.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return teacherList;
    }

    public static int deleteTeacher(Teacher teacher) {
        int result = 0;
        try {
            String sql = "delete from teacher where id = ?;";

            connection = dBUtil.getConnection();
            ps = connection.prepareStatement(sql);
            ps.setLong(1, teacher.getId());

            result = ps.executeUpdate();
            ps.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public static Teacher getTeacherById(Long teacherId) {
        Teacher dbTeacher = new Teacher();
        try {
            String sql = "select * from teacher where id = ?;";

            connection = dBUtil.getConnection();
            ps = connection.prepareStatement(sql);
            ps.setLong(1, teacherId);

            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                dbTeacher = new Teacher(
                        rs.getLong("id"),
                        rs.getString("name"),
                        rs.getString("department"),
                        rs.getString("gender")
                );
            }
            rs.close();
            ps.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return dbTeacher;
    }

    public static int updateTeacher(Teacher teacher) {
        int result = 0;
        try {
            String sql = "update teacher set name = ?, department = ?, gender = ? where id = ?;";

            connection = dBUtil.getConnection();
            ps = connection.prepareStatement(sql);
            ps.setString(1, teacher.getName());
            ps.setString(2, teacher.getDepartment());
            ps.setString(3, teacher.getGender());
            ps.setLong(4, teacher.getId());

            result = ps.executeUpdate();
            ps.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
    
}
