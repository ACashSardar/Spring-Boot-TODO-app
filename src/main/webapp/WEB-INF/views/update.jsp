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
      <form action="/update/${todoItem.id}" method="post">
        <h3>Edit Task Description</h3>
        <textarea name="description" id="" cols="155" rows="4">
${todoItem.description}
        </textarea>
        <label for="isComplete">Task Completed? </label>
        <input type="radio" id="isComplete" name="isComplete" value="true" />Yes
        <input type="radio" id="isComplete" name="isComplete" value="false" />No

        <br /><br />
        <input type="submit" class="btn btn-primary" value="Update Todo!" />
      </form>
    </div>
    <!-- Latest compiled and minified JavaScript -->
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
      integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
