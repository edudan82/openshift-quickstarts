<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<form:form method="post" action="${pageContext.request.contextPath}/pacienteGuardar" modelAttribute="paciente" id="pacienteGuardarForm">
      <table>
          <tr>
              <td>Id:</td>
              <td><form:input path="id" /></td>
          </tr>
          <tr>
              <td>Version:</td>
              <td><form:input path="version" /></td>
          </tr>
                    <tr>
              <td>Nombre:</td>
              <td><form:input path="nombre" /></td>
          </tr>
          <tr>
              <td>Apellidos:</td>
              <td><form:input path="apellidos" /></td>
          </tr>
          <tr>
              <td>Fecha Nacimiento:</td>
              <td><form:input path="fechaNacimiento"/></td>
          </tr>
          <tr>
              <td>Sexo:</td>
              <td><form:input path="sexo" /></td>
          </tr>
       </table>
  </form:form>
  
  <li><a id="pacienteGuardar" >Guardar</a></li>
