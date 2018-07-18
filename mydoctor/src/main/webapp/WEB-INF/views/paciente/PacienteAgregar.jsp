<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<form:form method="post" action="${pageContext.request.contextPath}/pacienteAgregar" modelAttribute="paciente">
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
              <td>Sexo:</td>
              <td><form:input path="sexo" /></td>
          </tr>
          <tr>
              <td colspan="2">
                  <button id="pacienteGuardar">Guardar</button>
              </td>
          </tr>
      </table>
  </form:form>
