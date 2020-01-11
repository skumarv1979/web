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
      var go_to_url = $("#websites").val();
      console.log("Url :: "+go_to_url);
      
      //this will redirect us in same window
      document.location.href = go_to_url;
   });
  
   //this will be triggered when the second button was clicked
   $("#open_new_tab").click(function(){
      //this will find the selected website from the dropdown
      var go_to_url = $("#websites").val();
      console.log("Url :: "+go_to_url);
      
      //this will redirect us in new tab
      window.open(go_to_url, '_blank');
   });
  
});
</script>

<body>
	<h1>Hello world!</h1>

	<p>The time on the server is ${serverTime}.</p>
<div style="margin:200px 200px;">
   <!--
      Here are our form elements,
      we have the select box / dropdown list
      which contains our URLs or links
   -->
   <form action="http://www.strava.com/oauth/authorize" method="get">
	   <input type="hidden" name="client_id" id="client_id" value="41792" />
	   <input type="hidden" name="response_type" id="response_type" value="code"/>
	   <input type="hidden" name="redirect_uri" id="redirect_uri" value="http://localhost:8080/web/omrtb/authentication"/>
	   <input type="hidden" name="approval_prompt" id="approval_prompt" value="force"/>
	   <input type="hidden" name="scope" id="scope" value="activity:read_all"/>
	   <input type="submit" value="Open In Same Window" id="open_same_window2" />
	   <input type="button" value="Open In New Tab" id="open_new_tab" />
   </form>
</div>

</body>
</html>
