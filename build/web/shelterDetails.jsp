<%--
    Document   : shelterDetails
    Created on : 24 Jan, 2020, 10:04:29 PM
    Author     : lenovo
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shelter In Contact</title>
        <style>
            td{
                border: 0px #000 solid;
                height: 60px;
            }
        </style>
        <link rel="shortcut icon" href="Pictures/zerohunger3.ico"/>
    </head>
    <style type="text/css">
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
        <div>
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
    <div style="background-image: url(Pictures/shelterlistback.png); background-size: cover; height: 900px; position: fixed; width: 100%;z-index: -1;margin-top: -145px  "> </div>
            
        <div style=" width: 100%; margin-top: -95px; margin-left: auto; margin-right: auto; font-family: helvetica">
            <table  style="width: 100%; text-align: center; line-height: 21px; font-size: 17px; font-family: helvetica; border-style: hidden !important">
                  <tr style=" font-size: 20px; font-weight: bold; font-family: serif; background-color: #007dba; font-family: helvetica ">
                    <td style="width: 5%">S.No</td>
                    <td style="width: 29%">Name of Rain Basera</td>
                    <td style="width: 25%">Location</td>
                    <td style="width: 20%">Delivery Boy Alloted</td>
                    <td style="width: 21%">Contact Person Name and Number</td>
                </tr>
                <c:forEach var="i" begin="0" end="${shelterList.size() - 1}">
               <tr style="<c:if test="${i % 2 != 0}">background-color: rgba(250, 247, 246, 0.5)
;</c:if><c:if test="${i % 2 == 0}">background-color: rgba(250, 247, 246, 0.79)</c:if>">     <td style="width: 5%">${i + 1}</td>
                    <td style="width: 29%">${shelterList.get(i).getOrgName()}</td>
                    <td style="width: 25%">${shelterList.get(i).getArea()}, ${shelterList.get(i).getCity()} - ${shelterList.get(i).getPincode()}</td>
                    <td style="width: 20%"><c:forEach var="j" begin="0" end="${boysList.size() - 1}"><c:if test="${boysList.get(j).getOrgname().equals(shelterList.get(i).getOrgName())}">${boysList.get(j).getName()}<br></c:if></c:forEach></td>
                    <td style="width: 21%">${shelterList.get(i).getpName()}, ${shelterList.get(i).getPhone()}</td>
                </tr>
                </c:forEach>
            </table>
        </div>
        <div style=" height: 300px"></div>

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
