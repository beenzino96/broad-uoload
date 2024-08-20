<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<title>create</title>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-md-12">
<h1 class="my-3">WRITE</h1>
<form method="post">
<div class="input-group my-3">
	<label class="form-label">
	컨텐츠 제목 : 
	</label>
	<input type="text" name="title" class="form-control">
</div>	
<div class="input-group my-3">
	<label class="form-label">
	컨텐츠 본문 : 
	</label>
	<textarea rows="5" name="content_body" class="form-control"></textarea>
</div>	
<div class="d-flex justify-content-end">
<input type="submit" name="create" class="btn btn-outline-success" value="블로그 컨텐츠 쓰기"/>
</div>	
</form>
</div>
</div>
</div>
</body>
</html>