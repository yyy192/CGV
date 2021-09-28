<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<c:import url="../temp/boot_head.jsp"></c:import>
<style type="text/css">
	.more {
		cursor: pointer;
	}
</style>

</head>
<body>
	<c:import url="../temp/boot_nav.jsp"></c:import>
	<h1>${board}InsertPage</h1>
	
	<div class="container-fluid">
		<form class="col-md-5 mx-auto" action="./insert" method="post">
			<div class="mb-3">
				<label for="title" class="form-label">Title</label> <input
					type="text" class="form-control" name="title" id="title"
					placeholder="Enter Title">
			</div>
			<div class="mb-3">
				<label for="contents" class="form-label">Contents</label>
				<textarea class="form-control" cols="" name="contents"
					id="contents" rows="6"></textarea>
			</div>

			<div class="mt-3 ml-0">
				<button type="submit" class="btn btn-success">ADD</button>
			</div>
		</form>
		
		</div>

	

</body>
</html>