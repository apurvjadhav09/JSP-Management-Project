<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Data</title>
<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>

  <jsp:include page="userform.html"></jsp:include>  

  <%@page import="com.JavaDb.UserDao,com.JavaBean.*,java.util.*"%>  

 
 <%  
      List<User> list =UserDao.getAllRecords();
       request.setAttribute("list1",list);  
 %>
 
 
          <h1>Users List</h1> 

  <div class="container">
  
  <table class="table table-striped table-dark" width="90%"> 
   <tr>
		<th>Id</th>
		<th>Name</th>
		<th>Password</th>
		<th>Email</th>  
		<th>Sex</th>
		<th>Country</th>
		<th>Edit</th>
		<th>Delete</th>
  </tr>  
<c:forEach items="${list1}" var="u1">  
			<tr>
				<td>${u1.getId()}</td>
				<td>${u1.getName()}</td>
				<td>${u1.getPassword()}</td>  
				<td>${u1.getEmail()}</td>
				<td>${u1.getSex()}</td>
				<td>${u1.getCountry()}</td>  
			
				<td><a href="editform.jsp?id=${u1.getId()}"> Edit </a></td>  
				<td><a href="deleteuser.jsp?id=${u1.getId()}">Delete</a></td>
			</tr>  
</c:forEach>
 




</table>
 
 
 
 <br/>
 <!--  
 <a href="adduserform.jsp"class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Home For Register </a>
  
-->
  
  
  </div>
 
 
 
     <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
 
</body>
</html>

 <!--  <li class="nav-item">
        <div class="model1">
        <!-- Button trigger modal 
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
<a href="editform.jsp?id=${u1.getId()}"/> Edit 
</button>-->

<!-- Modal 
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Register FOrm</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      
         
         
         
         
            
   <div class="form1">
   
    <form action="adduser.jsp" method="post">
  <div class="form-group row">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Name</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputName1" name="name"  placeholder="Name">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" name="password" id="inputPassword3" placeholder="Password">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputEmail3" name="email"  placeholder="email">
    </div>
  </div>
  
  
  <fieldset class="form-group">
    <div class="row">
      <legend class="col-form-label col-sm-2 pt-0">Sex</legend>
      <div class="col-sm-2">
        <div class="form-check">
          <input class="form-check-input" type="radio" name="sex" id="gridRadios1" value="option1" checked>
          <label class="form-check-label" for="gridRadios1">
          Female
          </label>
        </div>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="sex" id="gridRadios2" value="option2">
          <label class="form-check-label" for="gridRadios2">
           male
          </label>
        </div>
 
      </div>
    </div>
  </fieldset>
  <div class="form-group row">
    <div class="col-sm-2"></div>
   
    <div class="form-group">
    <label for="exampleFormControlSelect1">Country select</label>
    <select class="form-control" name="country" id="exampleFormControlSelect1">
            <option>India</option>  
			<option>Pakistan</option>  
			<option>Afghanistan</option>  
			<option>Berma</option>  
			<option>Other</option>  
    </select>
  </div>
   
  </div>
  <div class="form-group row">
    <div class="col-sm-2">
    
    </div>
  </div>

        
         
      
      
      
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Submit</button>
      </div>
    </div>
  </div>
</div>
        
    </form>
   
   
   </div>    
        
        </div>
        </li>
-->












