<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <!-- Latest compiled and minified CSS -->
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
      integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
      crossorigin="anonymous"
    />
    <title>Spring Boot TODO list</title>
  </head>
  <body>
    <div class="container">
      <h1 class="text-center">Todo List</h1>
      <h3>${val}</h3>

      <form action="/create" method="post">
        <h3>Create a new Task</h3>
        <textarea name="description" id="" cols="155" rows="4"></textarea
        ><br /><br />
        <input type="submit" class="btn btn-success" value="Add a Todo!" />
      </form>

      <hr />
      <table class="table table-bordered table-striped">
        <thead>
          <tr>
            <th>Description</th>
            <th>Complete</th>
            <th>Created Date</th>
            <th>Modified Date</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach var="item" items="${itemList}">           
              <c:choose>
                <c:when test="${item.complete==true}"><tr class="success"></c:when> 
                <c:when test="${item.complete==false}"><tr class="warning"></c:when>
                <c:otherwise><tr class="warning"></c:otherwise>
              </c:choose>
              <td><c:out value="${item.description}" /></td>
              <td><c:out value="${item.complete}" /></td>
              <td>
                <c:out value='${item.createdDate.toString().substring(0,19).replace("T"," at ")}' />
              </td>
              <td>
                <c:out value='${item.modifiedDate.toString().substring(0,19).replace("T"," at ")}' />
              </td>
              <td>
                <div class="btn btn-group-sm" role="group">
                  <a class="btn btn-info" href="/edit/${item.id}"> Edit</a>
                  <a class="btn btn-danger" href="/delete/${item.id}">Delete</a>
                </div>
              </td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
    </div>
    <!-- Latest compiled and minified JavaScript -->
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
      integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
