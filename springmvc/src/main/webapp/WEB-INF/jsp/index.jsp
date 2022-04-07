<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01
    Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
			<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
			<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
			<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
			<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
			<title>Customer Manager</title>
				<style>
					body{
						margin:0;
						padding:0;
						font-family:"arial",heletica,sans-serif;
						font-size:14px;
					    background: #2980b9 url('https://static.tumblr.com/03fbbc566b081016810402488936fbae/pqpk3dn/MRSmlzpj3/tumblr_static_bg3.png') repeat 0 0;
						-webkit-animation: 10s linear 0s normal none infinite animate;
						-moz-animation: 10s linear 0s normal none infinite animate;
						-ms-animation: 10s linear 0s normal none infinite animate;
						-o-animation: 10s linear 0s normal none infinite animate;
						animation: 10s linear 0s normal none infinite animate;
					}
					@-webkit-keyframes animate {
						from {background-position:0 0;}
						to {background-position: 500px 0;}
					}
					@-moz-keyframes animate {
						from {background-position:0 0;}
						to {background-position: 500px 0;}
					}
					@-ms-keyframes animate {
						from {background-position:0 0;}
						to {background-position: 500px 0;}
					}
					@-o-keyframes animate {
						from {background-position:0 0;}
						to {background-position: 500px 0;}
					}
					@keyframes animate {
						from {background-position:0 0;}
						to {background-position: 500px 0;}
					}
					.table-wrapper {
				        background: #fff;
				        padding: 20px 25px;
				        margin: 30px 0;
						border-radius: 3px;
				        box-shadow: 0 1px 1px rgba(0,0,0,.05);
				    }
					.table-title {        
						padding-bottom: 15px;
						background: black;
						color: #fff;
						padding: 16px 30px;
						margin: -20px -25px 10px;
						border-radius: 3px 3px 0 0;
				    }
				    .table-title h2 {
						margin: 5px 0 0;
						font-size: 24px;
					}
					.table-title .btn-group {
						float: right;
					}
					.table-title .btn {
						color: #fff;
						float: right;
						font-size: 13px;
						border: none;
						min-width: 50px;
						border-radius: 2px;
						border: none;
						outline: none !important;
						margin-left: 10px;
					}
					.table-title .btn i {
						float: left;
						font-size: 21px;
						margin-right: 5px;
					}
					.table-title .btn span {
						float: left;
						margin-top: 2px;
					}
				    table.table tr th, table.table tr td {
				        border-color: #e9e9e9;
						padding: 10px 18px;
						vertical-align: middle;
				    }
					table.table tr th:first-child {
						width: 120px;
					}
					table.table tr th:last-child {
						width: 120px;
					}
				    table.table-striped tbody tr:nth-of-type(odd) {
				    	background-color: #fcfcfc;
					}
					table.table-striped.table-hover tbody tr:hover {
						background: #f5f5f5;
					}
				    table.table th i {
				        font-size: 13px;
				        margin: 0 5px;
				        cursor: pointer;
				    }	
				    table.table td:last-child i {
						opacity: 0.9;
						font-size: 22px;
				        margin: 0 5px;
				    }
					table.table td a {
						font-weight: bold;
						color: #566787;
						display: inline-block;
						text-decoration: none;
						outline: none !important;
					}
					table.table td a:hover {
						color: #2196F3;
					}
					table.table td a.edit {
				        color: #FFC107;
				    }
				    table.table td a.delete {
				        color: #F44336;
				    }
				    table.table td i {
				        font-size: 19px;
				    }
					table.table .avatar {
						border-radius: 50%;
						vertical-align: middle;
						margin-right: 10px;
					}
			</style>
		</head>
		<body>
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
						<h2>Customer Manager</h2>
					</div>
						<div class="col-sm-6">
							<a href="/new" class="btn btn-success" data-toggle="modal">
							<i class="material-icons">&#xE147;</i> 
							<span>Add New Customer</span></a>
						</div>
                </div>
            </div>
            <table class="table table-striped table-hover">
            	<tr>
	            	<th>First Name</th>
	                <th>Last Name</th>
	                <th>Email</th>
	                <th>Address</th>
	                <th>City</th>
	                <th>Date Of Birth</th>
	                <th>Gender</th>
	                <th>Mobile No</th>
	                <th>Actions</th>
        		</tr>
       			<c:forEach items="${listCustomer}" var="customer">
        		<tr>
	          		<td>${customer.firstName}</td>
	                <td>${customer.lastName}</td>
	                <td>${customer.email}</td>
	                <td>${customer.address}</td>
	                <td>${customer.city}</td>
	                <td>${customer.birthDate}</td>
	                <td>${customer.gender}</td>
	                <td>${customer.mobileNo}</td>
	            <td>
                <a href="/edit?id=${customer.id}"  class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                &nbsp;&nbsp;&nbsp;
                <a href="/delete?id=${customer.id}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
           		</td>
        		</tr>
       			</c:forEach>
   			 </table>
		</div>   
	</body>
</html>