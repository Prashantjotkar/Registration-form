<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body  style="background:url(image/Planet9.jpg);background-size:cover;background-attachment:fixed;">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
<div class="container">
<div class="row">
<div class="col m6 offset-m3">
<div class="card">
<div class="card-content">
    <h3 style="margin-top:10px;color:blue;" class="center-align" >Register Here</h3>
<h5 id="msg" class="center-align" ></h5>
<div class="form center-align" >
<form action="Register" method="post" id="myform">

<input type="text" name="user_name" placeholder="Entre username"/>
<input type="password" name="user_pass" placeholder="Entre password"/>
<input type="email" name="user_email" placeholder="Entre email"/>

<button type="button" class="btn black">Submit</button>
</form>
<div class="loader" style="margin-top:10px; display:none">

    <div class="preloader-wrapper big active">
      <div class="spinner-layer spinner-blue">
        <div class="circle-clipper left">
          <div class="circle"></div>
        </div><div class="gap-patch">
          <div class="circle"></div>
        </div><div class="circle-clipper right">
          <div class="circle"></div>
        </div>
      </div>

      <div class="spinner-layer spinner-red">
        <div class="circle-clipper left">
          <div class="circle"></div>
        </div><div class="gap-patch">
          <div class="circle"></div>
        </div><div class="circle-clipper right">
          <div class="circle"></div>
        </div>
      </div>

      <div class="spinner-layer spinner-yellow">
        <div class="circle-clipper left">
          <div class="circle"></div>
        </div><div class="gap-patch">
          <div class="circle"></div>
        </div><div class="circle-clipper right">
          <div class="circle"></div>
        </div>
      </div>

      <div class="spinner-layer spinner-green">
        <div class="circle-clipper left">
          <div class="circle"></div>
        </div><div class="gap-patch">
          <div class="circle"></div>
        </div><div class="circle-clipper right">
          <div class="circle"></div>
        </div>
      </div>
    </div>
<h5>Please wait...</h5>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script>
$(document).ready(function(){
	console.log("successful....");
	$("#myform").on('submit', function(event){
		event.preventDefault();
		var f=$(this).serialize();
		console.log(f);
		$(".loader").show();
		$(".form").hide();
		
		
		
		$.ajax({
		url:"Register",
		data:f,
		type:'Post',
		success: function(data,textStatus,jqXHR){
			console.log(data);

			//console.log("successful....")
			$(".loader").hide();
			$(".form").show();
                       if(data.trim()==='Dne'){
                    	   $("#msg").html("Successfully Registered !!")
                    	   $("#msg").addClass('green-text');

                       }else{
                    	   $("#msg").html("Something went wrong !! ")
                    	   $("#msg").addClass('red-text');

                       }

		},
		error: function(jqXHR,textStatus,errorThrown){
			console.log(data);
			console.log("Error")
			$(".loader").hide();
			$(".form").show();
     	   $("#msg").html("Something went wrong!! ")
    	   $("#msg").addClass('red-text');

		}
		})
		
	})


})
</script>

</body>
</html>