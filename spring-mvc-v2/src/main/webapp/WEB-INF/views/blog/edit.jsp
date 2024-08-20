<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<title>수정</title>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-md-12">
				<form method="post">
				<input type="hidden" name="_method" value="put"/>
				<h1>EDIT</h1>
				<table class="table">
				<colgroup>
				<col style="width:15%">
				<col style="width:85%">
				</colgroup>
<tr>
<th>글번호</th><td>${blogCont.BLG_CONT_SEQ}</td>
</tr>				
<tr>
<th>컨텐츠 제목</th>
<td><input type="text" name="title" class="form-control" value="${blogCont.TITLE}"/></td>
</tr>

<tr>
<th>컨텐츠 본문</th>
<td>
<textarea name="contBdy" class="form-control">${blogCont.CONT_BDY}</textarea>
</td>
</tr>

<tr>
<th>입력일</th>
<td><fmt:formatDate value="${blogCont.INSERT_DT}" pattern="yyyy.MM.dd HH:mm:ss"/></td>
</tr>								
				</table>
				<div class="d-flex justify-content-end">
<div class="btn-group">
<a href="/list" class="btn btn-light">목록으로</a>
<input type="submit" name="create" class="btn btn-success" value="컨텐츠수정"/>
</div>
</div>	
			</form>
		</div>
	</div>
</div>
</body>
</html>