<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RESULT</title>

<script type="text/javascript">	
	
	button_event();
	
	function button_event(){
		console.log('aaa');
		if (confirm('${msg}') == true){    
			
			location.href = '${url}';

		}else{   

			location.href = './list';

		}

		}

	
</script>

</head>
<body>

	<input type="button" value="삭제하기" onclick="button_event();">
	<input type="hidden" id="msg" value="${msg}">	
	
</body>

</html>