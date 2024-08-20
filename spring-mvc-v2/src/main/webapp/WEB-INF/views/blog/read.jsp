<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% pageContext.setAttribute("CRLF", "\r\n"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<title>컨텐츠 읽기</title>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-md-12">
<table class="table">
<tr>
<th>글번호 : </th><td>${blogCont.BLG_CONT_SEQ}</td>
</tr>
<tr>
<th>제목 :</th><td>${blogCont.TITLE}</td>
</tr>
<tr>
<th></th><td>${fn:replace(blogCont.CONT_BDY, CRLF, '<br/>') }</td>
</tr>
<tr>
<th>입력일</th>
<td><fmt:formatDate value="${blogCont.INSERT_DT}" pattern="yyyy.MM.dd HH:mm:ss"/></td>
</tr>
</table>
</div>
</div>
</div>
</body>
</html>