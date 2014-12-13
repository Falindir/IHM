<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<jsp:include page="../fragments/headTag.jsp"/>
<body>
	<div class="wrap"> 
		<jsp:include page="../fragments/header.jsp"/>

		<section>
			<div id "test" class="container-fluid">
				<div id = "profilUserPanel" class="panel panel-info">
					<div class="panel-heading">
						<h3> Profil : Lopez Jimmy </h3>
					</div>
					<div class="panel-body">  
						<div class=" col-md-9 col-lg-9 "> 
							<table class="table table-user-information">
								<tbody>
									<tr>
										<td>Profession :</td>
										<td>Student</td>
									</tr>
									<tr>
										<td>Hire date :</td>
										<td>16/11/2014</td>
									</tr>
									<tr>
										<td>Date of Birth :</td>
										<td>06/06/1993</td>
									</tr>
									<tr>
										<td>Gender :</td>
										<td>Male</td>
									</tr>
									<tr>
										<td>Home Address :</td>
										<td>not documented</td>
									</tr>
									<tr>
										<td>Email :</td>
										<td>zerocooldu30@gmail.com</td>
									</tr>
									<tr>
										<td>Phone Number :</td>
										<td>04-01-02-03-04 (Landline)<br><br>06-12-86-48-78 (Mobile)</td>   
									</tr>
									<tr>
										<td>Notes :</td>
										<td>not documented</td>
									</tr>
									<tr>
										<td>Groups : </td>
										<td> <a href="#" class="btn btn-primary"><span class="glyphicon glyphicon-user"></span> View group</a> </td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="panel-footer">
						
						<a href="#" id = "editProfil" class="btn btn-warning"><span class="glyphicon glyphicon-pencil"></span> Edit profil</a>
						<a href="#" class="btn btn-success"><span class="glyphicon glyphicon-floppy-disk"></span> Save profil</a>
					</div>
				</div>
			</div>
		</section>

		<jsp:include page="../fragments/footer.jsp"/>
	</div>
</body>
</html>