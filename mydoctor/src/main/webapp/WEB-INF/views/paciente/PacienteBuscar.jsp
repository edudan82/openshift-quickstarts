<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c" %>

       <c:forEach var="paciente" items="${pacienteLista}">
           ${paciente.nombre}
    </c:forEach>