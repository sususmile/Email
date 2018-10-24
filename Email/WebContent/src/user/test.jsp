    <%@ page language="java" contentType="text/html; charset=UTF-8"
             pageEncoding="UTF-8"%>
        <%@ page import="java.io.*,java.util.*,java.sql.*"%>

        <html>
        <head>
        <title>SELECT 操作</title>
        </head>
        <body>
        <!--
        JDBC 驱动名及数据库 URL
        数据库的用户名与密码，需要根据自己的设置
        useUnicode=true&characterEncoding=utf-8 防止中文乱码
        -->
            <%
            String driver = "com.mysql.jdbc.Driver";
            String url = "jdbc:mysql://127.0.0.1:3306/mailbox";
            String user = "root";
            String password = "sunshine000";
            try {
                Class.forName(driver);
                Connection conn = DriverManager.getConnection(url, user, password);
                Statement statement = conn.createStatement();
                String sql = "select * from user";
                ResultSet rs = statement.executeQuery(sql);
                String name = null;
                String mima=null;
                while (rs.next()) {
                name = rs.getString("user_name");
                mima = rs.getString("user_pwd");
                out.println(name+"\t"+mima);
            }
            rs.close();
            conn.close();
            } catch (ClassNotFoundException e) {
                System.out.println("Sorry,can`t find the Driver!");
            e.printStackTrace();
            } catch (SQLException e) {
            e.printStackTrace();
            } catch (Exception e) {
            e.printStackTrace();
            }
      %>
        </table>
        </body>
        </html>