<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home.jsp</title>
<link rel="icon" type="image/png" href="/media/favicon.png"/>
<link rel="stylesheet" href="/css/cube.css">
<style type="text/css">



.menu {
	display: flex;
	list-style: none;
	align-items: flex-start;
	
	
	position: fixed;
	width: 100%;
	top: -16px;
	left: -10px;
 	background: white; 
	height: 100px;
/* 	border-bottom: 3px solid black; */
}

.menu-item {
/* 	min-width: 150px; */
	margin-top: 20px;
	opacity: 0.75;
	width: 270px;
	flex-shrink: 0;
	background: black;
	color: white;
	text-align: center;
	border: 1px solid gray;
}

.menu-item:hover > .menu-title {
	text-shadow: 10px 10px 5px white;
	color: white;
}

.menu-item:hover > .sub-menu {
	max-height: 300px;
	transition: max-height 1s;
}

.menu-item:last-child {
	margin-left: auto;
	margin-right: 50px;
}

.menu-title {
	padding: 10px;
	font-size: 15pt;
}

.sub-menu {
	max-height: 0px;
	overflow: hidden;
	list-style: none;
	padding-left: 0px;
}

.sub-menu-item {

}

.sub-menu-item > a {
	display: block;
	padding: 10px;
	font-size: 12pt;
	text-decoration: none;
	color: white;
}

.sub-menu-item:hover > a {
	background: #D8D8D8;
	color: black;
	text-shadow: 10px 10px 5px black;
}

iframe {
	margin-top: 100px;
}

body {
	background: url("/media/cat.jpg") no-repeat center;
	background-size: cover;
}


</style>
<script type="text/javascript" src="/webjars/jquery/jquery.js"></script>
<script type="text/javascript"> 
function resize() {
	let iframe = document.querySelector('iframe');
	iframe.style.height = getComputedStyle(iframe.contentDocument.documentElement).height;
}

// window.onload = function() {
// 	setInterval(resize, 100);	
// }

$(document).ready(function() {
	setInterval(resize, 100);
});
</script>
</head>
<body>
<nav>
<ul class="menu">
	<li style="padding: 0px 20px; margin-top: 20px;">
		<section class="perspective">
		<article class="cube">
			<div class="base">Base</div>
			<div class="base front">Front</div>
			<div class="base back">Back</div>
			<div class="base left">Left</div>
			<div class="base right">Right</div>
			<div class="base top">Top</div>
			<div class="base bottom">Bottom</div>
		</article>
		</section>
	</li>
	<li class="menu-item">
		<div class="menu-title">Alpha</div>
		<ol class="sub-menu">
			<li class="sub-menu-item"><a target="content" href="/alpha/fill">fill</a></li>
			<li class="sub-menu-item"><a target="content" href="/alpha/cross">cross</a></li>
			<li class="sub-menu-item"><a target="content" href="/alpha/race">race</a></li>
			<li class="sub-menu-item"><a target="content" href="/alpha/zigzag">zigzag</a></li>
			<li class="sub-menu-item"><a target="content" href="/alpha/earthwrom">earthworm</a></li>
		</ol>
	</li>
	<li class="menu-item">
		<div class="menu-title">Animation</div>
		<ol class="sub-menu">
			<li class="sub-menu-item"><a target="content" href="/ani/fill">fill</a></li>
			<li class="sub-menu-item"><a target="content" href="/ani/cross">cross</a></li>
			<li class="sub-menu-item"><a target="content" href="/ani/race">race</a></li>
			<li class="sub-menu-item"><a target="content" href="/ani/cube">cube</a></li>
			<li class="sub-menu-item"><a target="content" href="/ani/placeholder">placeholder</a></li>
		</ol>
	</li>
	<li class="menu-item">
		<div class="menu-title">React</div>
		<ol class="sub-menu">
			<li class="sub-menu-item"><a target="content" href="/fill.jsp">fill</a></li>
			<li class="sub-menu-item"><a target="content" href="/sort.jsp">sort</a></li>
			<li class="sub-menu-item"><a target="content" href="/react/cross">cross</a></li>
			<li class="sub-menu-item"><a target="content" href="/react/race">race</a></li>
		</ol>
	</li>
	<li class="menu-item">
		<div class="menu-title">Employee</div>
		<ol class="sub-menu">
			<li class="sub-menu-item"><a target="content" href="/dept/list">dept</a></li>
			<li class="sub-menu-item"><a target="content" href="/emp/list">emp</a></li>
			<li class="sub-menu-item"><a target="content" href="/salgrade/list">salgrade</a></li>
		</ol>
	</li>
	<li class="menu-item">
		<div class="menu-title">City</div>
		<ol class="sub-menu">
			<li class="sub-menu-item"><a target="content" href="/city/list">city</a></li>
			<li class="sub-menu-item"><a target="content" href="/country/list">country</a></li>
			<li class="sub-menu-item"><a target="content" href="/language/list">language</a></li>
			<li class="sub-menu-item"><a target="content" href="/search">search</a></li>
		</ol>
	</li>
	<li class="menu-item">
		<div class="menu-title">Login</div>
	</li>
</ul>
</nav>
<iframe src="/alpha/fill" 
		 name="content" 
		 width="105%"
		 scrolling="no"
		 frameborder='0'
		 sendbox="allow-same-origin"
		 onload="resize()">
iframe 태그를 지원하지 않는 브라우저는 이 글이 보입니다. 
</iframe>



</body>
</html>