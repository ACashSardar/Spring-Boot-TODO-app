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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
    <link rel="stylesheet" href="/styles.css">
    <title>TODO list-update task</title>
  </head>
  <body>
    <div class="container-fluid nav">
    	<h2 class="text-center" >SPRING-BOOT TODO LIST <i class="fa-brands fa-java"></i></h2>
    </div> 
    <div class="container">
      <br>
      <form action="/update/${todoItem.id}" method="post">
        <h4>EDIT TASK <i class="fa fa-cog"></i></h4>
        <textarea name="description" id="" rows="2" required="required">
${todoItem.description}
        </textarea><br><br>
        <label for="isComplete" class="isComplete">Task Completed? </label>
        <input type="radio" id="isComplete" name="isComplete" value="true" /><label class="isComplete"> YES </label>
        <input type="radio" id="isComplete" name="isComplete" value="false" required/><label class="isComplete"> NO </label>

        <br /><br />
        <input type="submit" class="btn btn-primary btn-lg" value="UPDATE TODO" />
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
