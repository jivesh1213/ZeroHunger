<%-- 
    Document   : dboysRegistration
    Created on : 26 Jan, 2020, 12:52:27 AM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta content="noindex, nofollow" name="robots">
<title>Delivery Boys Registration</title>
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


#forms{
  margin-top: -20px;
  background-image: url("Pictures/Driver.png");
  background-size:cover;
  height: 800px;
  margin-bottom: 100px;
}

.t_input{
	margin-top: 20px;
	margin-left: 15px;
	height: 50px;
	padding-left: 6px;
	border-radius: 6px 6px 6px 6px;
	border-width: 0px 0px 2px 0px;
	border-style: solid;
	border-color: rgba(207, 207, 207, 1);
	font-size: 16px;
	box-shadow: 0px 2px 0px 0px rgba(255,255,255,1);
	color:#1c1c1c;

	-webkit-appearance: none;
	flex: 1;
}

input.t_input:focus {
    outline-width: 0;
		background-color: #eee;
border-width: 0px 0px 0px 0px;
color: #333;
}
input.t_input:hover {
    outline-width: 0;
		background-color: #eee;
border-width: 0px 0px 0px 0px;
}
#hoteldisappear{
		margin-left: 16%;
		height: 17px;
		width: 17px;
			cursor: pointer;
}
#sheldisappear{
		margin-left: 15%;
		height: 17px;
		width: 17px;
			cursor: pointer;
}
select{
	margin-top: 1%;
		margin-left: 15px;
	height: 30px;
	padding-left: 6px;
	border-radius: 6px 6px 6px 6px;
	border-width: 0px 0px 2px 0px;
	border-style: solid;
	border-color: rgba(207, 207, 207, 1);
	font-size: 16px;
	box-shadow: 0px 2px 0px 0px rgba(255,255,255,1);
	color:#1c1c1c;
	width: 630px;
	cursor: pointer;
}
select:focus{
	outline-width: 0;
}
select:hover{
		background-color: #eee;
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

#filter{
        border-color: #f96343;
            }
            input.largerCheckbox { 
            width: 16px; 
            height: 16px; 
        }
        #col{
            color: #f92e03;
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

	function ShowHideDiv() {
        var night = document.getElementById("sheldisappear");
        var day = document.getElementById("hoteldisappear");
		if(day.checked)
		{dvdropdown.style.display ="none";
		dvshelter.style.display="block";
		}
		if(night.checked)
		{dvdropdown.style.display ="block";
		dvshelter.style.display="none";
		}

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
    <form method="post" action="dbServlet" style="padding-top: 13%; padding-left: 28%; font-size: 17px; font-family: Helvetica; ">
		<input class="t_input" style="width: 630px" type="text" name="d_name" placeholder="Name" <c:if test="${(\"\").equals(dbName)}">id="filter"</c:if> <c:if test="${!(\"\").equals(dbName)}">value="${dbName}"</c:if>/><br/>
		<input class="t_input" style="width: 197px" type="text" name="age" placeholder="Age" <c:if test="${(\"\").equals(age)}">id="filter"</c:if> <c:if test="${!(\"\").equals(age)}">value="${age}"</c:if>>
		<input class="t_input" style="width: 413px" type="text" name="phone" placeholder="Contact No" <c:if test="${(\"\").equals(phone)}">id="filter"</c:if> <c:if test="${!(\"\").equals(phone)}">value="${phone}"</c:if>></br>
		<input class="t_input" style="width: 630px" type="text" name="adhar" placeholder="Aadhar No" <c:if test="${(\"\").equals(adhar)}">id="filter"</c:if> <c:if test="${!(\"\").equals(adhar)}">value="${adhar}"</c:if>></br>
		<input class="t_input" style="width: 630px" type="text" name="email" placeholder="Email ID" <c:if test="${(\"\").equals(email)}">id="filter"</c:if> <c:if test="${!(\"\").equals(email)}">value="${email}"</c:if>><br/><br>
		<input type="radio" name="shift" value="Morning" id="hoteldisappear" onclick="ShowHideDiv()"><span style="font-size: 20px;"> Morning</span>
                <input type="radio" name="shift" value="Night" id="sheldisappear" onclick="ShowHideDiv()"><span style="font-size: 20px;"> Night</span><br>
			<div id="dvshelter" style="display: none">
			<select  name="shelterName" id="shelter">
                            <option value="Select Shelters">Select Shelters</option>
                            <c:forEach var="i" begin="0" end="${shelterList.size() - 1}">
                                <option value="${shelterList.get(i).getOrgName()}" <c:if test="${shelterList.get(i).getDbAlloted() > 1}">disabled</c:if>>${shelterList.get(i).getOrgName()}</option>
                            </c:forEach>
			</select>
			</div>
			<div id="dvdropdown" style="display: none">
			<select  name="hotelName" id="hotel">
                            <option value="Select Hotels" >Select Hotels</option>
			<c:forEach var="i" begin="0" end="${hotelList.size() - 1}">
                            <option value="${hotelList.get(i).getOrgName()}" <c:if test="${hotelList.get(i).getDbAlloted() > 1}">disabled</c:if>>${hotelList.get(i).getOrgName()}</option>
                        </c:forEach>
			</select>
			</div>
                        <c:if test="${errorMessage != null}">
                            <br>
                            <div style="color: #fa2e02; font-size: 15px; margin-left: 38px"> &nbsp${errorMessage}</div>
                        </c:if>
		<input class="largerCheckbox" style="margin-top: 10px; margin-left: 15px" type="checkbox" name="agree" value="agreed"/> I agree to follow all the rules specified by ZerOHunger.
                <c:if test="${check != null}">
                    <br>
                    <div style="color: #fa2e02; font-size: 15px; margin-left: 38px"> ${check}</div>
                </c:if>
                <br>
                <input type="submit" id="submit" style="font-family: Helvetica; font-size: 18px">
	</form>



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