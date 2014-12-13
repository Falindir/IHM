<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>Taskboard</title>

    <c:url value="/resources/bootstrap/css/bootstrap.min.css" var="bootstrapCss"/>
    <link href="${bootstrapCss}" rel="stylesheet"/>

    <c:url value="/resources/css/designTC.css" var="designTCCss"/>
    <link href="${designTCCss}" rel="stylesheet"/>
    
    <c:url value="/resources/bootstrap/css/bootstrap-theme.min.css" var="bootstrapThCss"/>
    <link href="${bootstrapThCss}" rel="stylesheet"/>

    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

    <link rel="stylesheet" href="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css" />
    <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>

    <c:url value="/resources/bootstrap/js/bootstrap.min.js" var="bootstrapJS"/>
    <script type="text/javascript" src="${bootstrapJS}"></script>

    <c:url value="/resources/js/sendFormulaire.js" var="sendFormulaireJS"/>
    <script type="text/javascript" src="${sendFormulaireJS}"></script>

    <c:url value="/resources/js/Chart.js" var="ChartJS"/>
    <script type="text/javascript" src="${ChartJS}"></script>

    <c:url value="/resources/js/generatorDiagramme.js" var="generatorDiagrammeJS"/>
    <script type="text/javascript" src="${generatorDiagrammeJS}"></script>

    <c:url value="/resources/js/functions.js" var="functionsJS"/>
    <script type="text/javascript" src="${functionsJS}"></script>

    <meta charset="UTF-8"/>
</head>


