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
				<div class="container-fluid">
					<h1>Board</h1>
				</div>
			</section>

			<section>
			<div class="container-fluid">
				<div id = "myBoardPanel" class="panel panel-primary">
					<div class="panel-heading">
						<h3> My Board :</h3>
					</div>
					<div class="panel-body"> 
						<div class="panel-group" id="myBoard" role="tablist" aria-multiselectable="true">
							<div class="panel panel-primary">
								<div class="panel-heading" role="tab" id="myThesoOne">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#myBoard" aria-expanded="true" href="#collapseMyThesoOne" aria-controls="collapseMyThesoOne">
											Board : IHM <span class="glyphicon glyphicon-chevron-down"></span>
										</a>

									</h4>
								</div>
								<div id="collapseMyThesoOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="myThesoOne">
									<div class="panel-body">
										<p> Description : not documented </p>
										<a href="test" class="btn btn-sm btn-success">Show Board</a>
									</div>
								</div>
							</div>
							<div class="panel panel-primary">
								<div class="panel-heading" role="tab" id="myThesoTwo">
									<h4 class="panel-title">
										<a class="collapsed" data-toggle="collapse" data-parent="#myBoard" aria-expanded="false" href="#collapseMyThesoTwo" aria-controls="collapseMyThesoTwo">
											Board : Animaux <span class="glyphicon glyphicon-chevron-down"></span>
										</a>
									</h4>
								</div>
								<div id="collapseMyThesoTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="myThesoTwo">
									<div class="panel-body">
										<p> Description : not documented </p>
										<a href="#" class="btn btn-sm btn-success">Show Board</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section>
			<div class="container-fluid">
				<div id = "otherBoardPanel" class="panel panel-primary">
					<div class="panel-heading">
						<label><h3>Others Board :</h3></label>						
					</div>
					<div class="panel-body"> 
						<div class="panel-group" id="otherBoard" role="tablist" aria-multiselectable="true">
							<div class="panel panel-primary">
								<div class="panel-heading" role="tab" id="otherThesoOne">
									<h4 class="panel-title">
										<a class="collapsed" data-toggle="collapse" data-parent="#otherBoard" aria-expanded="false" href="#collapseOtherThesoOne" aria-controls="collapseOtherThesoOne">
											Board : Femmes <span class="glyphicon glyphicon-chevron-down"></span>
										</a>
									</h4>
								</div>
								<div id="collapseOtherThesoOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="otherThesoThree">
									<div class="panel-body">
										<p> Autor : Dumas Geoffrey </p>
										<p> Description : not documented </p>
										<a href="#" class="btn btn-sm btn-success">Show Board</a>
									</div>
								</div>
							</div>
							<div class="panel panel-primary">
								<div class="panel-heading" role="tab" id="otherThesoTwo">
									<h4 class="panel-title">
										<a class="collapsed" data-toggle="collapse" data-parent="#otherBoard" aria-expanded="false" href="#collapseOtherThesoTwo" aria-controls="collapseOtherThesoTwo">
											Board : Hommes <span class="glyphicon glyphicon-chevron-down"></span>
										</a>
									</h4>
								</div>
								<div id="collapseOtherThesoTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="otherThesoTwo">
									<div class="panel-body">
										<p> Autor : Vidal Morgane </p>
										<p> Description : not documented </p>
										<a href="#" class="btn btn-sm btn-success">Show Board</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

			<section>
				<div class = "container-fluid">
					<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#newBoardModal" onclick="resetform('formBoard')"> Create new board </button>

					<div class="modal fade" id="newBoardModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog modal-sm">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
									<h4 class="modal-title" id="myModalLabel">Creation of a new board</h4>
								</div> <!-- /.modal-header -->
								<div class="modal-body">
									<form id="formBoard" class="form-horizontal" method="POST" action="boardTC.html">
										<div class="form-group">
											<label for="titleUser" class="col-sm-4 control-label">Title :</label> 
											<div id="contenerInputTitleUser" class = "col-sm-8">
												<input class="form-control" id="titleUser" type="text" name="titleBoard" required>
											</div>
										</div>  
										<div class="form-group">
											<label for="accessUser" class="col-sm-4 control-label">Access :</label> 
											<div id="contenerSelectAccessUser" class = "col-sm-8">
												<select class="form-control" id="accessUser" type="text" name="titleBoard" required>
													<option value="public" selected>Public</option>
													<option value="private" >Private</option>
												</select>
											</div>
										</div> 
										<div class="form-group">
											<label for="descriptifBoardUser" class="col-sm-4 control-label">Description (optional)</label>
											<div id="contenerInputdescriptifBoardUser" class = "col-sm-8">
												<textarea class="form-control" rows="3"></textarea>
											</div>
										</div>
									</form>
								</div>
								<div class="modal-footer">
									<p>
										<a class="form-control btn btn-success" href="javascript: submitform('formBoard')" >Create</a>
									</p>
								</div> 
							</div>
						</div>
					</div>
				</div>
			</section>

			<jsp:include page="../fragments/footer.jsp"/>

		</div>
		
	</body>
	</html>

	