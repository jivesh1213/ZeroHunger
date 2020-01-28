<%-- 
    Document   : ourTeam
    Created on : 26 Jan, 2020, 10:19:52 AM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta content="noindex, nofollow" name="robots">
<title>ZerO Hunger</title>
<link rel="shortcut icon" href="Deep_face.ico"/>
</head>
<style type="text/css">
	* {
		box-sizing: border-box;
	}
	#toplogo{
			margin-left: 40px;
			width:300px;
			height: 83px;
	}


		.column
		{
			float: left;
			height:95px;
			width: 100%;
			color: #333;
			display:flex;

			padding:10px;
			font-family:"helvetica";
			font-size:18px;
			z-index:999;

		}

	#links{
		margin-left:172px;
    	color: black;
	}

	.active {
		float: left;
		text-align: center;
		padding: 14px 50px;
		text-decoration: none;
		margin-top: 11px;
		font-size: 16px;
    color: black;
		transition:0.4s;
	}
	.column a:hover {
		color: #007dba;
		cursor: pointer;
		transition: 0.8s;
}



	#first{
		margin-left: 15%;
		width: 70%;
		float: left;
		height: 40%;
		margin-top: 15%;
		opacity: .9;
		padding: 50px;
		background-color: #EEE;
		color: #333;
		font-family:"helvetica";
	}


	#bg-grid{

		background-color: #fff;
	}
	#grid
	{
		margin:auto;
		max-width: 1200px;
		height: 600px;
	}
	article{
		margin-top: 100px;
		margin-left: 75px;
		width: 25%;
		height: auto;
		display: inline-block ;
	}

	.icons{

			max-width: 100%;
			height: 150px;
			background-size: cover !important;
			background-position: center !important;
			transition: all 0.5s;
	}
	.icons:hover{
		transform: scale(1.2);
		cursor:pointer;
	}

	#head{
		height:70px;
		position:fixed;
		color:white;
	}
	.content
		{
			margin-top: -20px;
		background-image:url("Pictures/Back1.jpg");
		background-size:cover;
		height:610px;
		width:100%;
	}
	#initiative{
		background-image:url("Pictures/Our.png");
		background-size: cover;
		width: 100%;
		height:700px;
    margin-top: -45px;
	}
	#team{
		background-image:url("Pictures/OurTeam.png");
		background-size: cover;
		width: 100%;
		height:759px;
	}
	#contact
		{
		margin: auto;
		max-width: 85%;
		height: 400px;
		background-color:#eee;
		color:black;
		text-align:left;
		font-family:"helvetica";
		text-decoration: none;
		font-size: 20px;
		}

	#blogo{
		width: 500px;
		margin-left: -55px;
		margin-top: 70px;
	}
	#clicks{
		margin-left: 400px;
		margin-top:  -157px;
		text-decoration: none;
	}
	#clicks a{
		font-size: 17px;
		color: #555;
		text-decoration: none;
	}
	#clicks a:hover{
		cursor: pointer;
	}
	#back2Top {
		width: 40px;
		line-height: 40px;
		overflow: hidden;
		z-index: 999;
		display: none;
		border-radius:40px;
		cursor: pointer;
		-moz-transform: rotate(270deg);
		-webkit-transform: rotate(270deg);
		-o-transform: rotate(270deg);
		-ms-transform: rotate(270deg);
		transform: rotate(270deg);
		position: fixed;
		bottom: 20px;
		margin-right:20px;
		right:0;
		background-color: #DDD;
		color: #555;
		text-align: center;
		font-size: 25px;
		text-decoration: none;
	}
	#back2Top:hover {
		background-color: #DDF;
		color: #000;
	}
	body{
		margin:0px;
		padding:0px;
	}
	h3{
	margin:0px;
	padding:0px;}


h1{
	display: inline;
}


</style>
<script type="text/javascript">
	function scTo() {
		console.log(event.target.attributes.url.value);
		document.querySelector(event.target.attributes.url.value).scrollIntoView({
		  behavior: 'smooth'
		});
		event.stopPropagation();
		return false;
	}
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(window).scroll(function() {
    var height = $(window).scrollTop();
    if (height > 100) {
        $('#back2Top').fadeIn();
    } else {
        $('#back2Top').fadeOut();
    }
});
$(document).ready(function() {
    $("#back2Top").click(function(event) {
        event.preventDefault();
        $("html, body").animate({ scrollTop: 0 }, "slow");
        return false;
    });

});
</script>
<body>
<div id="contain">
    <div class="head" id="home">

				 <div class="column" style="background-color:#fff;">
					&nbsp
				<a  href="http://localhost:8080/ZeroHunger-war/Home.jsp"><img src="Pictures/ZerOHunger.png" id="toplogo"></a>
			<b>			<div id="links">
							<a class="active" href="http://localhost:8080/ZeroHunger-war/Home.jsp">HOME</a>
							<a class="active" href="http://localhost:8080/ZeroHunger-war/ourInitiative.jsp">OUR INITIATIVE</a>
							<a class="active" href="http://localhost:8080/ZeroHunger-war/Donate.jsp">DONATE</a>
							<a class="active" url="#contact" onclick="scTo()">ABOUT US</a>
						</div>			</b>
				</div>

    </div> &nbsp
</div>

    <div id="team" style=" margin-bottom: 100px">

</div>

<div id="contact">
	<a href="http://localhost:8080/ZeroHunger-war/Home.jsp"><img src="Pictures/ZerOHunger.png" id="blogo"></a>
	<div id="clicks">
		<div>
			<div>
				<h5>ABOUT US</h5>
				<div><a href="http://localhost:8080/ZeroHunger-war/ourInitiative.jsp">Our Intiative</a></div><br>
				<div><a href="http://localhost:8080/ZeroHunger-war/ourTeam.jsp">Our Team</a></div>

			</div>

				<div style="margin-top:-144px; margin-left:150px">
					<h5>GET INVOLVED</h5>
					<div><a href="http://localhost:8080/ZeroHunger-war/hotelRegistration.jsp">Hotel Registration</a></div><br>
					<div><a href="http://localhost:8080/ZeroHunger-war/shelterRegistration.jsp">Rain Basera Registration</a></div><br>
					<div><a href="http://localhost:8080/ZeroHunger-war/dboysRegistration.jsp">Delivery Boy</a></div><br>
					<div><a href="http://localhost:8080/ZeroHunger-war/Donate.jsp">Donate</a></div>
				</div>
				<div style="margin-top:-237px; margin-left:400px">
					<h5>FOLLOW US:</h5>
                                        <img src="Pictures/logos.png" style="width: 220px">

				</div>
		</div>
	</div>
</div>

<a id="back2Top" title="Back to top" href="#">&#10148;</a>

</body>
</html>
