<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!doctype html>
<html lang="en">
	<style>
		.ck-editor__editable {
		    min-height: 50vh;
		}
	</style>

<%@ include file="./head.jsp"%>

<body>
	<%@ include file="./nav_write.jsp"%>

	<!-- breadcrumb start-->
	<section class="breadcrumb breadcrumb_bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb_iner text-center">
						<div class="breadcrumb_iner_item"></div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- breadcrumb start-->
	
	<!--================Blog Area =================-->
	<section class="blog_area single-post-area section_padding">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 posts-list">
					<div class="single-post">
					<%
						String id = request.getParameter("id");
					%>
						<form action="lib/write_process.jsp?id=<%=id %>" method="post">
							<div class="input-group-icon">
								<div class="icon"><i class="fas fa-chevron-circle-right"></i></div>
								<input type="text" name="title" placeholder="Title" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Title'"
								 required class="single-input">
							</div>
							<div class="input-group-icon mt-10">
								<div class="icon"><i class="fas fa-chevron-circle-right"></i></div>
								<input type="text" name="subtitle" placeholder="Subtitle" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Subtitle'"
								 required class="single-input">
							</div>
							<div class="input-group-icon mt-10">
								<div class="icon"><i class="fas fa-list-ul"></i></div>
								<div class="form-select" id="default-select">
									<select name="list">
										<option>Category</option>
										<option value="Web">Web</option>
										<option value="Database">Database</option>
										<option value="Security">Security</option>
										<option value="Algorithm">Algorithm</option>
										<option value="AI">AI</option>
									</select>
								</div>
							</div>

							<div class="mt-10">
								<textarea name="content" id="editor">
									<p>일 시 : </p>
									<p>장 소 	: </p>
									<p>대 상 	: </p>
									<p>내 용 : </p>
									<p>모집 인원 : </p>
									<p>연락처 : </p>
								</textarea>
							</div><br><br>
							<div style="text-align:center;">
								<input type="submit" value="Complete" class="button rounded-0 primary-bg text-white w-100 btn_4" type="submit">
								<a href="study.jsp" style="display:block; margin-top:10px; font-size:15px;">Back</a>
							</div>
						</form>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="blog_right_sidebar">
						<aside class="single_sidebar_widget search_widget">
							<form action="#">
								<div class="form-group">
									<div class="input-group mb-3">
										<input type="text" class="form-control"
											placeholder='Search Keyword' onfocus="this.placeholder = ''"
											onblur="this.placeholder = 'Search Keyword'">
										<div class="input-group-append">
											<button class="btn" type="button">
												<i class="ti-search"></i>
											</button>
										</div>
									</div>
								</div>
								<button class="button rounded-0 primary-bg text-white w-100 btn_4" type="submit">Search</button>
							</form>
						</aside>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================Blog Area end =================-->

	<!-- jquery plugins here-->
	<!-- jquery -->
	<script src="js/jquery-1.12.1.min.js"></script>
	<!-- popper js -->
	<script src="js/popper.min.js"></script>
	<!-- bootstrap js -->
	<script src="js/bootstrap.min.js"></script>
	<!-- easing js -->
	<script src="js/jquery.magnific-popup.js"></script>
	<!-- swiper js -->
	<script src="js/swiper.min.js"></script>
	<!-- swiper js -->
	<script src="js/masonry.pkgd.js"></script>
	<!-- particles js -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- swiper js -->
	<script src="js/slick.min.js"></script>
	<script src="js/gijgo.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<!-- custom js -->
	<script src="js/custom.js"></script>
	<script id="dsq-count-scr" src="//everyolo.disqus.com/count.js" async></script>
    <script src="https://cdn.ckeditor.com/ckeditor5/11.0.1/classic/ckeditor.js"></script>
    <script>
        ClassicEditor.create( document.querySelector( '#editor' ) )
        .catch( error => {
            console.error( error );
        } );
    </script>
    
    
</body>

</html>