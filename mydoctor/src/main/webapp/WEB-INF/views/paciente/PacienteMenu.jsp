<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<ul class="side-nav">
	<li><a id="pacienteAgregar">Agregar</a></li>
	<li><a id="pacienteEditar" >Editar</a></li>
	<li><a id="pacienteBuscar" >Buscar</a></li>
</ul>

		<form:form method="post" action="${pageContext.request.contextPath}/pacienteBuscar" modelAttribute="pacienteBuscar" id="pacienteBuscarForm">	
	              <form:input path="nombre"/>
	 	</form:form>

<script type="text/javascript" src=  "<c:url value="/js/paciente.js"/>">  </script>