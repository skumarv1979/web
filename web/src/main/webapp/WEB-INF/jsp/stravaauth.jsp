<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>
</head>
<!-- include our library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type='text/javascript'>
$(document).ready(function() {
 
   //this will be triggered when the first button was clicked
   $("#open_same_window").click(function(){
      //this will find the selected website from the dropdown
      var go_to_url = $("#websites").find(":selected").val();
      
      //this will redirect us in same window
      document.location.href = go_to_url;
   });
  
   //this will be triggered when the second button was clicked
   $("#open_new_tab").click(function(){
      //this will find the selected website from the dropdown
      var go_to_url = $("#websites").find(":selected").val();
      
      //this will redirect us in new tab
      window.open(go_to_url, '_blank');
   });
  
});
</script>

<body>
	<h1>Strava Authorization</h1>

	<p>code  ${code}.</p>
	<p>scope  ${scope}.</p>
	<p>state  ${state}.</p>

</body>
</html>
