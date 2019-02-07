<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.time.DBUtil.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String sql="select l.link_name,l.link_icon,l.link_url,sb.sublink_name,sb.sublink_icon,sb.sublink_url from faculty_sidebar_links l" 
				
				+ " left join faculty_sidebar_sublinks sb on l.link_id = sb.link_id order by l.link_id";
	Connection con = DBConnection.getCon();
	PreparedStatement pst = con.prepareStatement(sql);
	ResultSet rs =pst.executeQuery();
%>
<!-- sidebar -->
 <div class="col-lg-2 p-0">
            <div class="list-group">
            <% while (rs.next()) { 
            	
            	String link_name = rs.getString("link_name");
            	String link_icon = rs.getString("link_icon");
            	String link_url = rs.getString("link_url");
            	String sublink_name = rs.getString("sublink_name");
            	if(sublink_name == null){
            		%>
            	
            	<a href="<%= link_url %>" class="list-group-item list-group-item-action active" style="background: #17A2B8;border: 0px;border-radius: 0%">
            	<span class="<%= link_icon %>" > <%= link_name %></span>
            	</a>
            	<% }else{ %>
            	<div class="list-group-item list-group-item-action" style="overflow:auto">
            	<p class="float-left"><span class="<%= link_icon %>" > <%= link_name %></span></p>
            	<a href="#" data-target="#<%= link_name %>" data-toggle="collapse" class="badge badge-pill badge-primary float-right"><i class="fa fa-plus"></i></a>
            	</div>
            	<div class="collapse" id="<%= link_name %>">
            	<% do{
            		if(rs.getString("sublink_name")==null)
                		break;
            	%>
            	<div class="list-group">
                <a href="<%= rs.getString("sublink_url") %>" class="list-group-item"><i class="<%= rs.getString("sublink_icon")%>"></i> <%= sublink_name %></a>
            	</div>
            	<% 
            	}while(rs.next()); %>
            	</div>
            	<% } %>
            
            <% } %>         
    		</div>
</div>