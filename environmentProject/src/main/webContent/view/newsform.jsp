<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<meta http-equiv="X-UA-Compatible" content="IE=Edge">

<!-- include기능 -->
<script src="//code.jquery.com/jquery-1.11.0.min.js">
</script>
<script type="text/javascript">   
$(document).ready( function() {
					$("#navBar").load("../newsNav.html");  //헤더 인클루드
					 
});
</script>

<div id="navBar"></div>
</head>


<body>	
	<main>
		<!-- NEWS 정보창 -->
		<div class="newsLetter">
			<h1>NEWS</h1>
			${ctxPath = pageContext.request.contextPath;''}
			<a href="${ctxPath}/news/write.do">글쓰기</a>			
		</div>
		
		<div class="support-grid"></div>
		
		<div class="band">	
		    <div class="item-1">
		        <a href="https://design.tutsplus.com/articles/international-artist-feature-malaysia--cms-26852" class="card">
		          <div class="thumb" style="background-image: url(http://lorempixel.com/400/200/nature/1/);"></div>
		          <article>
		          	<div id="item1">
		          		<h1>제목 넣기</h1>
		          	</div>
		            <div id="writer1">
		            	<span>글쓴이</span>
		            </div>    
		          </article>
		        </a>
		    </div>
		    <div class="item-2">
			    <a href="https://webdesign.tutsplus.com/articles/how-to-conduct-remote-usability-testing--cms-27045" class="card">
			      <div class="thumb" style="background-image: url(http://lorempixel.com/400/200/nature/2/);"></div>
			      <article>
			        <div id="item2">
		          		<h1>제목 넣기</h1>
		          	</div>
		            <div id="writer2">
		            	<span>글쓴이</span>
		            </div>
			      </article>
			    </a>
		    </div>
		    <div class="item-3">
			    <a href="https://design.tutsplus.com/articles/envato-tuts-community-challenge-created-by-you-july-edition--cms-26724" class="card">
			      <div class="thumb" style="background-image: url(http://lorempixel.com/400/200/nature/3/);"></div>
			      <article>
			        <div id="item3">
		          		<h1>제목 넣기</h1>
		          	</div>
		            <div id="writer3">
		            	<span>글쓴이</span>
		            </div>
			      </article>
			    </a>
		    </div>
		    <div class="item-4">
			    <a href="https://webdesign.tutsplus.com/tutorials/how-to-code-a-scrolling-alien-lander-website--cms-26826" class="card">
			      <div class="thumb" style="background-image: url(http://lorempixel.com/400/200/nature/4/);"></div>
			      <article>
			        <div id="item4">
		          		<h1>제목 넣기</h1>
		          	</div>
		            <div id="writer4">
		            	<span>글쓴이</span>
		            </div>
			      </article>
			    </a>
		    </div>
		    <div class="item-5">
			    <a href="https://design.tutsplus.com/tutorials/stranger-things-inspired-text-effect--cms-27139" class="card">
			      <div class="thumb" style="background-image: url(http://lorempixel.com/400/200/nature/5/);"></div>
			      <article>
			        <div id="item5">
		          		<h1>제목 넣기</h1>
		          	</div>
		            <div id="writer5">
		            	<span>글쓴이</span>
		            </div>
			      </article>
			    </a>
		    </div>
		    <div class="item-6">
			    <a href="https://photography.tutsplus.com/articles/5-inspirational-business-portraits-and-how-to-make-your-own--cms-27338" class="card">
				  <div class="thumb" style="background-image: url(http://lorempixel.com/400/200/nature/6/);"></div>
				  <article>
			       	<div id="item6">
		          		<h1>제목 넣기</h1>
		          	</div>
		            <div id="writer6">
		            	<span>글쓴이</span>
		            </div>
			      </article>
			    </a>
		    </div>
		    <div class="item-7">
			    <a href="https://webdesign.tutsplus.com/articles/notes-from-behind-the-firewall-the-state-of-web-design-in-china--cms-22281" class="card">
				  <div class="thumb" style="background-image: url(http://lorempixel.com/400/200/nature/7/);"></div>
				  <article>
			       	<div id="item7">
		          		<h1>제목 넣기</h1>
		          	</div>
		            <div id="writer7">
		            	<span>글쓴이</span>
		            </div>
			      </article>
			    </a>
		    </div>
		    <div class="item-8">
			    <a href="https://webdesign.tutsplus.com/articles/notes-from-behind-the-firewall-the-state-of-web-design-in-china--cms-22281" class="card">
				  <div class="thumb" style="background-image: url(http://lorempixel.com/400/200/nature/8/);"></div>
				  <article>
			       	<div id="item8">
		          		<h1>제목 넣기</h1>
		          	</div>
		            <div id="writer8">
		            	<span>글쓴이</span>
		            </div>
			      </article>
			    </a>
		    </div>
	  	</div>
	</main>
	<footer>
	</footer>
</body>
</html>