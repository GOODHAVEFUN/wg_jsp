<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>공지사항 글수정</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resource/css/adminNoticeEdit.css" />
</head>
<body>
	<input type="hidden" value="${noticeRead.getNoticeNum()}">
	<main>
		<!-- 공지사항 글수정-->
		<section class="first-section">
			<div class="section-top-category-name">
				<div class="section-top-category-name-text1">커뮤니티</div>
				<div class="section-top-category-name-text2">공지사항 - 글수정</div>
			</div>
		</section>
		<!-- 제목 & 내용 -->
		<form action="${pageContext.request.contextPath}/community/notice/noticeViewDetail/noticeViewDetailEditOk.ad?noticeNum=${noticeRead.getNoticeNum()}" accept-charset="UTF-8" method="post">
			<section class="titleContentSection border-radius bgGray">
				<div class="titleContent">
					<div class="title">
						<p>제목</p>
						<div class="title-out-box">
							<textarea class="title-in-box-text" name="noticeTitle"
								placeholder="제목을 입력하세요(50자 이내)">${noticeRead.getNoticeTitle()}</textarea>
						</div>
					</div>
					<div class="content">
						<p>내용</p>
						<div class="content-box-out">
							<textarea class="content-area border-radius" name="noticeContent"
								placeholder="내용을 입력하세요(3000자 이내)">${noticeRead.getNoticeContent()}</textarea>
						</div>
					</div>
				</div>
			</section>
			<!-- 뒤로가기 & 작성완료 -->
			<section>
				<div class="pagebackComplete border-radius">
					<button type="button"
						onclick="location.href='${pageContext.request.contextPath}/community/notice/noticeViewDetail/noticeViewDetail.ad?noticeNum=${noticeRead.getNoticeNum()}'"
						class="pageback button-size border-radius bgRed colorWhite"
						name="pageback">뒤로가기</button>

					<button type="submit"
						onclick="location.href='${pageContext.request.contextPath}/community/notice/noticeViewDetail/noticeViewDetailEditOk.ad?noticeNum=${noticeRead.getNoticeNum()}'"
						class="complete button-size border-radius bgGreen colorWhite "
						name="complete">작성완료</button>
				</div>
			</section>
		</form>
	</main>
</body>
</html>
