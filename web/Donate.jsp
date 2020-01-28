<%-- 
    Document   : Donate
    Created on : 26 Jan, 2020, 8:53:39 AM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta content="noindex, nofollow" name="robots">
<title>Donate Now</title>
<link rel="shortcut icon" href="Pictures/zerohunger3.ico"/>
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
		margin-left:325px;
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

#line
{	height:10px;
background-color:#007dba;
}

#forms{
  margin-top: -20px;
  background-image: url("Pictures/donation.png");
  background-size:cover;
  height: 687px;

}

#donate_cont
{	height:195px;
}

#donate
{
	height:300px;
	margin-top: 5%;
  margin-left: 29%;

}
.buttons{
	background-color: #f3f3f3;
	border: solid;
	border-color: #007dba;
	border-radius: 10px;
	width: 130px;
	height: 40px;
	margin-right: 40px;
	font-size: 20px;
	font-family: helvetica;
	margin-bottom: 2%;
	cursor: pointer;
	transition: 0.5s;
}
.buttons:hover{
	transform: scale(1.2);
}
#amount{
	margin-left: 20.5%;
	margin-bottom: 2%;
	height: 50px;
	padding-left: 6px;
	border-radius: 6px 6px 6px 6px;
	border-width: 0px 0px 2px 0px;
	border-style: solid;
	border-color: rgba(207, 207, 207, 1);
	font-size: 16px;
	box-shadow: 0px 2px 0px 0px rgba(255,255,255,1);
	color:#1c1c1c;
}
input.buttons:focus{
	outline-width: 0;

}
input:focus {
    outline-width: 0;
		background-color: #eee;
border-width: 0px 0px 0px 0px;
color: #333;
}
.buttons:focus {
    outline-width: 0;
		background-color: #007dba;
		color: #f3f3f3;
border-width: 0px 0px 0px 0px;
}

#submit
{
    background-color: #007dba;
    border-radius: 2px;
    border: none;
    padding: 10px 25px;
    color: #FFF;
		margin-top:	25px;
		margin-left: 270px;
	transition:0.3s;
	cursor: pointer;
}

#submit:hover {

		transform: scale(1.3);

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
		margin-left: 0px;
		margin-top: 70px;
	}
	#clicks{
		margin-left: 500px;
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

	function addamount(val)
	{
	result = document.getElementById('amount');
    result.value = result.value? parseInt(result.value) + parseInt(val) : parseInt(val);
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

<div id="forms">

</div>

<div id="line">
</div>


<div id="donate_cont" style="font-family: Helvetica; font-size: 18px">
<br><br>
	<p align="center">Poor access to nutritious food results in hunger and malnutrition prevalent amongst certain sections,<br>
	while lack of awareness causes food wastage amongst others.<br> <br>
Our program is designed to bridge this gap between demand and supply<br> of food as a solution to the problem of hunger and food waste in India.
<br>
Your donations make this possible.
<br><br><br>
<b>AMOUNT</b></p>
</div>


<div id="donate">
	<button class="buttons" value="100" onclick="addamount(this.value)" >100</button>
	<button class="buttons" value="500" onclick="addamount(this.value)">500</button>
	<button class="buttons" value="2500" onclick="addamount(this.value)">2500</button>
	<button class="buttons" value="5000" onclick="addamount(this.value)">5000</button>
	<br>
	<input id="amount" style="width: 230px" type="text" name="r_name" placeholder="Amount"/><br/>
	<button id="submit" style="font-family: Helvetica; font-size: 18px" onclick="window.location.href = 'http://localhost:8080/ZeroHunger-war/Thank.jsp'">Submit</button>
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
					<div><a href="http://localhost:8080/ZeroHunger-war/dboysRegistration.jsp">Delivery Boy Registration</a></div><br>
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
