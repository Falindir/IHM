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
			<h3> Group : </h3>
		</section>

		<section>
			<div class="container-fluid">
				<div id = "myBoardPanel" class="panel panel-primary">
					<div class="panel-heading">
						<h3> My Groups :</h3>
					</div>
					<div class="panel-body"> 
						<div class="panel-group" id="myBoard" role="tablist" aria-multiselectable="true">
							<div class="panel panel-primary">
								<div class="panel-heading" role="tab" id="myThesoOne">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#myBoard" aria-expanded="true" href="#collapseMyThesoOne" aria-controls="collapseMyThesoOne">
											Group : 1 <span class="glyphicon glyphicon-chevron-down"></span>
										</a>

									</h4>
								</div>
								<div id="collapseMyThesoOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="myThesoOne">
									<div class="panel-body">
										<p> Descriptif : not documented </p>
										<a href="#" class="btn btn-sm btn-success">Show Group</a>
										<a href="#" class="btn btn-sm btn-danger">Leave Group</a>
									</div>
								</div>
							</div>
							<div class="panel panel-primary">
								<div class="panel-heading" role="tab" id="myThesoTwo">
									<h4 class="panel-title">
										<a class="collapsed" data-toggle="collapse" data-parent="#myBoard" aria-expanded="false" href="#collapseMyThesoTwo" aria-controls="collapseMyThesoTwo">
											Group : 2 <span class="glyphicon glyphicon-chevron-down"></span>
										</a>
									</h4>
								</div>
								<div id="collapseMyThesoTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="myThesoTwo">
									<div class="panel-body">
										<p> Descriptif : not documented </p>
										<a href="#" class="btn btn-sm btn-success">Show Group</a>
										<a href="#" class="btn btn-sm btn-danger">Leave Group</a>
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
						<label><h3>Others Groups :</h3></label>						
					</div>
					<div class="panel-body"> 
						<div class="panel-group" id="otherBoard" role="tablist" aria-multiselectable="true">
							<div class="panel panel-primary">
								<div class="panel-heading" role="tab" id="otherThesoOne">
									<h4 class="panel-title">
										<a class="collapsed" data-toggle="collapse" data-parent="#otherBoard" aria-expanded="false" href="#collapseOtherThesoOne" aria-controls="collapseOtherThesoOne">
											Group : 3 <span class="glyphicon glyphicon-chevron-down"></span>
										</a>
									</h4>
								</div>
								<div id="collapseOtherThesoOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="otherThesoThree">
									<div class="panel-body">
										<p> Descriptif : not documented </p>
										<a href="#" class="btn btn-sm btn-success">Show Group</a>
										<a href="#" class="btn btn-sm btn-danger">Leave Group</a>
										<a href="#" class="btn btn-sm btn-warning">Join Group</a>
									</div>
								</div>
							</div>
							<div class="panel panel-primary">
								<div class="panel-heading" role="tab" id="otherThesoTwo">
									<h4 class="panel-title">
										<a class="collapsed" data-toggle="collapse" data-parent="#otherBoard" aria-expanded="false" href="#collapseOtherThesoTwo" aria-controls="collapseOtherThesoTwo">
											Group : 4 <span class="glyphicon glyphicon-chevron-down"></span>
										</a>
									</h4>
								</div>
								<div id="collapseOtherThesoTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="otherThesoTwo">
									<div class="panel-body">
										<p> Descriptif : not documented </p>
										<a href="#" class="btn btn-sm btn-success">Show Group</a>
										<a href="#" class="btn btn-sm btn-danger">Leave Group</a>
										<a href="#" class="btn btn-sm btn-warning">Join Group</a>
									</div>
								</div>
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