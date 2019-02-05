<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>fac_links</title>
</head>
<body>
    <form action="fac_links.jsp" method="get">
		<table style="with=50%">
			<tr><td>link_id</td><td><input type="text" name="link_id"/></td></tr>
			<tr><td>link_name</td><td><input type="text" name="link_name"/></td></tr>
			<tr><td>link_icon</td><td><input type="text" name="link_icon"/></td></tr>
			<tr><td>link_url</td><td><input type="text" name="link_url"/></td></tr>
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
			String link_id=request.getParameter("link_id");
			String link_name = request.getParameter("link_name");
			String link_icon = request.getParameter("link_icon");
			String link_url = request.getParameter("link_url");
			String query="insert into faculty_sidebar_links values(?,?,?,?)";
			st=con.prepareStatement(query);
			st.setString(1,link_id);
			st.setString(2,link_name);
			st.setString(3,link_icon);
			st.setString(4,link_url);
			int status = st.executeUpdate();
			if(status == 1){
				out.println("<script>alert('insert succesfully')</script>");
			}
			st.close();
			con.close();
		}
		

%>