<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Your food</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body style="background-repeat: no-repeat;background-size: 100%;"
 background="https://www.hindustantimes.com/rf/image_size_960x540/HT/p2/2020/08/15/Pictures/_3bd8527a-dec7-11ea-a9c1-0156c0fcc051.jpg">


<img align="right" align="top" style="" alt="" src="https://img4.nbstatic.in/tr:w-700/5bfeb40e52faff000c823ea3.jpg">



<form:form method="post" action="save">

<table style="background-color:#FFFFE0;width:490px;">

<tr><td><h1 style="color:red;">Add Your Order</h1></td></tr>
 
<tr>
<td style="color:red;">Select Food  : </td><br>
 
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

 
<td style="color:red;">Quantity :</td>

<td><form:input path="qty" /></td>
</tr>
<tr>
 
 
 <td style="color:red;">Table Number :
 
<td>


 
<form:select path="tb_no">
	    		<form:option value="Table Number 1">Table Number 1</form:option>
	    		<form:option value="Table Number 2">Table Number 2</form:option>
	    		<form:option value="Table Number 3">Table Number 3</form:option>
	    		<form:option value="Table Number 4">Table Number 4</form:option>
	    		<form:option value="Table Number 5">Table Number 5</form:option>
	    		
	    		
</form:select></td>


</tr>



<tr><td></td></tr>

<tr>
<td> </td>
<td align="left"><input class="btn btn-danger ml-2" type="submit" value="Order" /></td>
</tr>
</table>






</form:form>









</body>
</html>
 


