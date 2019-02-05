<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>hod_sublinks</title>
</head>
<body>
    <form action="hod_sublinks.jsp" method="get">
		<table style="with=50%">
			<tr><td>sublink_id</td><td><input type="text" name="sublink_id"/></td></tr>
			<tr><td>sublink_name</td><td><input type="text" name="sublink_name"/></td></tr>
			<tr><td>sublink_icon</td><td><input type="text" name="sublink_icon"/></td></tr>
			<tr><td>sublink_url</td><td><input type="text" name="sublink_url"/></td></tr>
			<tr><td>link_id</td><td><input type="text" name="link_id"/></td></tr>
			</table>
		<input type="submit" value="Submit" name="submit"/>
	</form>
</body>
</html>
<%

		String url="jdbc:mysql://localhost/timeguardian";
		String uname="root";
		String pass="";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con= DriverManager.getConnection(url,uname,pass);
		PreparedStatement st = null;
		if(request.getParameter("submit")!= null) {
			String sublink_id=request.getParameter("sublink_id");
			String sublink_name = request.getParameter("sublink_name");
			String sublink_icon = request.getParameter("sublink_icon");
			String sublink_url = request.getParameter("sublink_url");
			String link_id = request.getParameter("link_id");
			String query="insert into student_sidebar_sublinks values(?,?,?,?,?)";
			st=con.prepareStatement(query);
			st.setString(1,sublink_id);
			st.setString(2,sublink_name);
			st.setString(3,sublink_icon);
			st.setString(4,sublink_url);
			st.setString(5,link_id);
			int status = st.executeUpdate();
			if(status == 1){
				out.println("<script>alert('insert succesfully')</script>");
			}
			st.close();
			con.close();
		}
		

%>