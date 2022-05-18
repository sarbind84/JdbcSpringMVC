<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Orders Page</title>

<!-- style lib for jquery data tables -->
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/jq-3.6.0/dt-1.11.5/datatables.min.css"/>
 
<script type="text/javascript" src="https://cdn.datatables.net/v/bs4/jq-3.6.0/dt-1.11.5/datatables.min.js"></script>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" 
integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
crossorigin="anonymous">
</head>
<body style="background-repeat: no-repeat;background-size: 100%;"
 background="https://th.bing.com/th/id/R.7f9144bcb6849d4f10407f212a6fbc92?rik=28MpW6NAvLaGrA&riu=http%3a%2f%2ftechstory.in%2fwp-content%2fuploads%2f2015%2f11%2fZomato-fact-sheet.jpg&ehk=CexvOeP03b2KQLkiDe73Su9RaPPHJQ80GnJfqWcpVQY%3d&risl=&pid=ImgRaw&r=0">

<h1 style="color: white;">Orders List</h1>



<table style="background-color:#FFFFE0; class="table table-bordered table-striped" border="2" width="70%" cellpadding="2">
<tr><th>Id</th><th>Order Name</th><th>Order Quantity</th><th>Table Number</th><th>Edit</th><th>Delete</th></tr>
<c:forEach items="${orderdata}" var="od">
<tr>

<td>${od.id}</td>
<td>${od.name}</td>
<td>${od.qty}</td>
<td>${od.tb_no}</td>
<td><a class="btn btn-info" href="orderedit/${od.id}">Edit</a></td>
<td><a class="btn btn-danger ml-2" href="delete/${od.id}">Delete</a></td>
</c:forEach>
</tr>

</table>
<br/>
<a class="btn btn-info" href="vieworder" style="color: black;text-decoration: none;">Add New Order</a>





<!-- datatable j query and need query link lib as well -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script type="text/javascript" src="https://cdn.datatables.net/v/bs4/dt-1.10.25/datatables.min.js"></script>
		
<script>
			$(document).ready(function() {
				
				//#table id selector
				//datatable is jquery data table function
				//
				$("#employeeTable").DataTable({
					//bsortable false to specify index coloumn
						'aoColumnDefs': [{
        				'bSortable': false,
        				'aTargets': [-1] /* 1st one, start by the right */
    				}]
				});
			})
		</script>
</body>
</html>

 
 