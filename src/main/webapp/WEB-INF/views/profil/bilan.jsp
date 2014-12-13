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
			<h3> Bilan : </h3>
			<select class="selectpicker">
				<option value="IHM" selected>IHM</option>
				<option value="POKEMON" >POKEMON</option>
				<option value="FEMME" >FEMME</option>
				<option value="HOMME" >HOMME</option>
			</select>

		</section>




		<section>
    <div id="tabStats">
        <div id="tabStatsTH">
            <div class="tabStatsColumn">Tasklist (All) <input name="checkboxes" class = "checkboxes" id="checkboxes5" value="show" type="checkbox"></div>
            <div class="tabStatsColumn">My hours (h)</div>
            <div class="tabStatsColumn">Total of hours on board (h)</div>
            <div class="tabStatsColumn">Percent of my hours (%)</div>
        </div>
        <div class="accordion">
            <div class="tabStatsTR">
                <div class="tabStatsTD">Scénario <input name="checkboxes" class = "checkboxes" id="checkboxes0" value="show" type="checkbox"></div>
                <div class="tabStatsTD">10</div>
                <div class="tabStatsTD">50</div>
                <div class="tabStatsTD">20</div>
            </div>
            <div class="tabStatsTRhidden">
                <div class="tabStatsTD">contentHidden</div>
                <div class="tabStatsTD">contentHidden</div>
                <div class="tabStatsTD">contentHidden</div>
                <div class="tabStatsTD">contentHidden</div>
            </div>
            <div class="tabStatsTR">
                <div class="tabStatsTD">Storyboard <input name="checkboxes" class = "checkboxes" id="checkboxes1" value="show" type="checkbox"></div>
                <div class="tabStatsTD">None</div>
                <div class="tabStatsTD">10</div>
                <div class="tabStatsTD">0</div>
            </div>
            <div class="tabStatsTRhidden">
                <div class="tabStatsTD">contentHidden</div>
                <div class="tabStatsTD">contentHidden</div>
                <div class="tabStatsTD">contentHidden</div>
                <div class="tabStatsTD">contentHidden</div>
            </div>
            <div class="tabStatsTR">
                <div class="tabStatsTD">Maquette <input name="checkboxes" class = "checkboxes" id="checkboxes2" value="show" type="checkbox"></div>
                <div class="tabStatsTD">9</div>
                <div class="tabStatsTD">10</div>
                <div class="tabStatsTD">90</div>
            </div>
            <div class="tabStatsTRhidden">
                <div class="tabStatsTD">contentHidden</div>
                <div class="tabStatsTD">contentHidden</div>
                <div class="tabStatsTD">contentHidden</div>
                <div class="tabStatsTD">contentHidden</div>
            </div>
            <div class="tabStatsTR">
                <div class="tabStatsTD">Evaluation <input name="checkboxes" class = "checkboxes" id="checkboxes3" value="show" type="checkbox"></div>
                <div class="tabStatsTD">10</div>
                <div class="tabStatsTD">10</div>
                <div class="tabStatsTD">100</div>
            </div>
            <div class="tabStatsTRhidden">
                <div class="tabStatsTD">contentHidden</div>
                <div class="tabStatsTD">contentHidden</div>
                <div class="tabStatsTD">contentHidden</div>
                <div class="tabStatsTD">contentHidden</div>
            </div>
            <div class="tabStatsTR">
                <div class="tabStatsTD">Présentation <input name="checkboxes" class = "checkboxes" id="checkboxes4" value="show" type="checkbox"></div>
                <div class="tabStatsTD">None</div>
                <div class="tabStatsTD">None</div>
                <div class="tabStatsTD">0</div>
            </div>
            <div class="tabStatsTRhidden">
                <div class="tabStatsTD">contentHidden</div>
                <div class="tabStatsTD">contentHidden</div>
                <div class="tabStatsTD">contentHidden</div>
                <div class="tabStatsTD">contentHidden</div>
            </div>
        </div>
        <div class="tabStatsTR">
            <div class="tabStatsTD">TOTAL</div>
            <div class="tabStatsTD">29</div>
            <div class="tabStatsTD">80</div>
            <div class="tabStatsTD">36.25</div>
        </div>
    </div>
</section>



		<section>
		
			<div  class = "canvasBilan" id="canvas-holder">
				<canvas id="chart-area" width="200" height="200"/>
			</div>

			<div class = "canvasBilan" id="canvas-holder2">
				<canvas id="chart-area2" width="200" height="200"/>
			</div>

		</section>

		<jsp:include page="../fragments/footer.jsp"/>


	
<script type="text/javascript">

    $(".checkboxes").click(function(event){
    event.stopPropagation();
   
});

</script>

	</div>
</body>
</html>