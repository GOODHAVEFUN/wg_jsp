<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>공지사항 관리</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resource/css/adminNoticeList.css" />
</head>
<body>
	<div class="container">
		<!-- 좌측 어사이드 -->
		<aside>
			<div class="aside-spacing"></div>
			<section class="member">
				<a class="member-a"
					href="${pageContext.request.contextPath}/admin/adminMember/adminMember.jsp">
					<div class="member-text">회원관리</div>
				</a>
			</section>
			<section class="board-mate">
				<a class="board-mate-a"
					href="${pageContext.request.contextPath}/admin/adminMateMatch/adminMateMatch.jsp">
					<div class="board-mate-text">메이트찾기 관리</div>
				</a>
			</section>
			<section class="board-free">
				<a class="board-free-a"
					href="${pageContext.request.contextPath}/admin/adminFreeBoard/adminFreeBoard.jsp">
					<div class="board-free-text">자유게시판 관리</div>
				</a>
			</section>
			<section class="board-qna">
				<a class="board-qna-a"
					href="${pageContext.request.contextPath}/admin/adminQna/adminQna.jsp">
					<div class="board-qna-text">Q&A 관리</div>
				</a>
			</section>
			<section class="board-notification">
				<a class="board-notification-a"
					href="${pageContext.request.contextPath}/admin/adminNotice/adminNoticeList/adminNoticeList.jsp">
					<div class="board-notification-text">공지사항 관리</div>
				</a>
			</section>
		</aside>

		<!-- 우측 게시글 목록 창 -->
		<main>
			<!-- 카테고리 & 글쓰기 창 -->
			<section class="section-top">
				<!-- 카테고리명 -Q&A -->
				<div class="section-top-category-name">
					<div class="section-top-category-name-text1">커뮤니티</div>
					<div class="section-top-category-name-text2">공지사항 - 관리</div>
				</div>

				<!-- 글쓰기버튼 -->
				<div class="section-top-write">
					<a class="section-top-write-a"
						href="${pageContext.request.contextPath}/admin/adminNotice/adminNoticeWrite/adminNoticeWrite.jsp">
						<button class="button-write">글쓰기</button>
					</a>
				</div>
			</section>

			<!-- 검색바 -->
			<section class="section-search">
				<form class="search-form" action="">
					<div class="search-inner">
						<input class="search-bar" type="text">
						<button class="search-button" type="submit">검색</button>
					</div>
				</form>
			</section>

			<!-- 게시글 목록 -->
			<section class="section-board">
				<c:choose>
					<c:when test="${not empty noticeList}">
						<c:forEach var="notice" items="${noticeList}">
							<!-- @@아우터박스 -->
							<div class="board-outer-box">
								<a class="board-inner-box"
									href="${pageContext.request.contextPath}/community/notice/noticeViewDetail/noticeViewDetail.ad?noticeNum=${notice.getNoticeNum()}">
									<!-- 이너박스 상단 -->
									<div class="board-inner-box-title">
										<div class="board-inner-box-title-text">

											<c:out value="${notice.getNoticeTitle()}" />
										</div>
									</div> <!-- 이너박스 중단 -->
									<div class="board-inner-box-content">
										<div class="board-inner-box-content-text">
											<c:out value="${notice.getNoticeContent()}" />
										</div>
									</div> <!-- 이너박스 하단 -->
									<div class="board-inner-box-view-comment">
										<div class="comment-view">
											<img class="comment-view-img"
												src="${pageContext.request.contextPath}/resource/img/view.png"
												alt="" />
										</div>
										<div class="comment-view-cnt">
											<div class="comment-view-cnt-text">112</div>
										</div>
										<div class="comment-written-date">
											<div class="comment-written-date-text">
												<c:out value="${notice.getNoticeWriteDate()}" />
											</div>
										</div>
									</div>
								</a>
							</div>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td colspan="5" align="center">등록된 게시물이 없습니다</td>
						</tr>
					</c:otherwise>
				</c:choose>
			</section>

			<!-- 페이징  -->
			<div class="page_wrap">
				<div class="page_nation">
					<a class="arrow pprev" href="#">&lt;&lt;</a> <a class="arrow prev"
						href="#">&lt;</a> <a href="#" class="active">1</a> <a href="#">2</a>
					<a href="#">3</a> <a href="#">4</a> <a href="#">5</a> <a href="#">6</a>
					<a href="#">7</a> <a href="#">8</a> <a href="#">9</a> <a href="#">10</a>
					<a class="arrow next" href="#">&gt;</a> <a class="arrow nnext"
						href="#">&gt;&gt;</a>
				</div>
			</div>

		</main>
	</div>
</body>
</html>
