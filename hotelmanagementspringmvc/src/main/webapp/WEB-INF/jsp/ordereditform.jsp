<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Your Order</title>
<!-- style lib for jquery data tables -->
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/jq-3.6.0/dt-1.11.5/datatables.min.css"/>
 
<script type="text/javascript" src="https://cdn.datatables.net/v/bs4/jq-3.6.0/dt-1.11.5/datatables.min.js"></script>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" 
integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
crossorigin="anonymous">
</head>
<body>

<h1>Edit Your Order</h1>
<form:form method="post" action="/hotelmanagementspringmvc/editsave">
<table  class="table table-bordered table-striped">
<tr>
<td></td>
<td><form:hidden path="id" /></td>
</tr>
<tr>
<td>Order Name : </td>

<td>


<form:select path="name">
	    		<form:option value="upma">Upma</form:option>
	    		<form:option value="idlisambar">Idli Sambar</form:option>
	    		<form:option value="idlipodi">Idli Podi</form:option>
	    		<form:option value="basibelabhat">Basi Bela Bhat</form:option>
	    		<form:option value="curdrice">Curd Rice</form:option>
	    		<form:option value="rasamrice">Rasam Rice</form:option>
	    		<form:option value="combomeal">Combo Meal</form:option>
	    		<form:option value="mysoresada">Mysore Sada</form:option>
	    		<form:option value="ravasada">Rava Sada</form:option>
	    		
</form:select>
</td>


</tr>
<tr>
<td>Quantity :</td>
<td><form:input path="qty" /></td>
</tr>
<tr>
<td>Table Number :</td>
<td>



 
<form:select path="tb_no">
	    		<form:option value="Table Number 1">Table Number 1</form:option>
	    		<form:option value="Table Number 2">Table Number 2</form:option>
	    		<form:option value="Table Number 3">Table Number 3</form:option>
	    		<form:option value="Table Number 4">Table Number 4</form:option>
	    		<form:option value="Table Number 5">Table Number 5</form:option>
	    		
	    		
</form:select></td>
</tr>

<tr>

<td><input class="btn btn-danger ml-2" type="submit" value="Edit And Save Your Order" /></td>
</tr>
</table>
</form:form>

</body>
</html>