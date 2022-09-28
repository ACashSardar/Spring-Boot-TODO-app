<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
      integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
    <link rel="stylesheet" href="styles.css">
    <title>TODO list-home</title>
  </head>
  <body>
    <div class="container-fluid nav">
    	<h2 class="text-center" >SPRING-BOOT TODO LIST <i class="fa-brands fa-java"></i></h2>
    </div> 
    <div class="container"><br>
      <form action="/create" method="post">
        <h4>CREATE A NEW TASK <i class="fa fa-plus"></i></h4>
        <table class="add-task">
        	<tr>
        		<td><textarea name="description" id="" rows="1"></textarea></td>
        		<td class="text-right"><input type="submit" class="btn btn-success btn-lg" value="Add Todo" /></td>
        	</tr>
        </table>
      </form>
      <table class="table">
        <thead>
          <tr>
            <th  class="text-center">Description</th>
            <th  class="text-center">Completion Status</th>
            <th  class="text-center">Created Date</th>
            <th  class="text-center">Modified Date</th>
            <th  class="text-center">Actions</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach var="item" items="${itemList}">           
              <c:choose>
                <c:when test="${item.complete==true}"><tr class="success"></c:when> 
                <c:when test="${item.complete==false}"><tr class="danger"></c:when>
                <c:otherwise><tr class="warning"></c:otherwise>
              </c:choose>
              <td  class="text-center"><c:out value="${item.description}" /></td>
              <td  class="text-center">
	              <c:choose>
	                <c:when test="${item.complete==true}"><i class="fa fa-check text-success"></i> Done</c:when> 
	                <c:when test="${item.complete==false}"><i class="fa fa-exclamation-triangle text-warning"></i> Pending</c:when>
	                <c:otherwise><tr class="warning"></c:otherwise>
	              </c:choose>
	              
              </td>
              <td class="text-center">
                <c:out value='${item.createdDate.toString().substring(0,16).replace("T"," at ")}' />
              </td>
              <td class="text-center">
                <c:out value='${item.modifiedDate.toString().substring(0,16).replace("T"," at ")}' />
              </td>
              <td class="text-center">
                <div class="btn btn-group-sm" role="group">
                  <a class="btn btn-primary" href="/edit/${item.id}"> Edit</a>
                  <a class="btn btn-danger" href="/delete/${item.id}">Delete</a>
                </div>
              </td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
    </div>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
      integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
