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
			<div id ="listContacts" class="row">
				<div class="col-xs-12 col-sm-offset-3 col-sm-6">
					<div class="panel panel-default">
						<div class="panel-heading c-list">
							<span class="title">My Contacts</span>
							<ul class="pull-right c-controls">
								<li><a href="#cant-do-all-the-work-for-you" data-toggle="tooltip" data-placement="top" title="Add Contact"><i class="glyphicon glyphicon-plus"></i></a></li>
								<li><a href="#" class="hide-search" data-command="toggle-search" data-toggle="tooltip" data-placement="top" title="Search"><i class="glyphicon glyphicon-search"></i></a></li>

							</ul>
						</div>

						<div class="row" style="display: none;">
							<div class="col-xs-12">
								<div class="input-group c-search">
									<input type="text" class="form-control" id="contact-list-search">
									<span class="input-group-btn">
										<button class="btn btn-primary" type="button"><span class="glyphicon glyphicon-search"></span></button>
									</span>
								</div>
							</div>
						</div>

						<ul class="list-group" id="contact-list">
							<li class="list-group-item">
								<div class="col-xs-9">
									<span class="name">Commandre Benjamin</span><br/>
								</div>
								<div class="col-xs-3">
									<a href="#" class="btn btn-primary">Show profil </a>
								</div>
								<div class="clearfix"></div>
							</li>

							<li class="list-group-item">
								<div class="col-xs-9">
									<span class="name">Dumas Geoffrey</span><br/>
										</div>
								<div class="col-xs-3">
									<a href="#" class="btn btn-primary">Show profil </a>
								</div>
								<div class="clearfix"></div>
							</li>

							<li class="list-group-item">
								<div class="col-xs-9">
									<span class="name">Lopez Jimmy</span><br/>
											</div>
								<div class="col-xs-3">
									<a href="#" class="btn btn-primary">Show profil </a>
								</div>
								<div class="clearfix"></div>
							</li>
							
						</ul>
					</div>
				</div>
			</div>
			 <div id="cant-do-all-the-work-for-you" class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title" id="mySmallModalLabel">List of user</h4>
                </div>
                <div class="modal-body">
                </div>
            </div>
        </div>
    </div>
		</section>

		<jsp:include page="../fragments/footer.jsp"/>

		<script>

		$(function () {
			/* BOOTSNIPP FULLSCREEN FIX */
			if (window.location == window.parent.location) {
				$('#back-to-bootsnipp').removeClass('hide');
			}


			$('[data-toggle="tooltip"]').tooltip();

			$('#fullscreen').on('click', function(event) {
				event.preventDefault();
				window.parent.location = "http://bootsnipp.com/iframe/4l0k2";
			});
			$('a[href="#cant-do-all-the-work-for-you"]').on('click', function(event) {
				event.preventDefault();
				$('#cant-do-all-the-work-for-you').modal('show');
			})

			$('[data-command="toggle-search"]').on('click', function(event) {
				event.preventDefault();
				$(this).toggleClass('hide-search');

				if ($(this).hasClass('hide-search')) {        
					$('.c-search').closest('.row').slideUp(100);
				}else{   
					$('.c-search').closest('.row').slideDown(100);
				}
			})

			$('#contact-list').searchable({
				searchField: '#contact-list-search',
				selector: 'li',
				childSelector: '.col-xs-12',
				show: function( elem ) {
					elem.slideDown(100);
				},
				hide: function( elem ) {
					elem.slideUp( 100 );
				}
			})
		});

</script>

</div>
</body>
</html>