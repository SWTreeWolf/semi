<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
</script>
<script type="text/javascript">
function process(){
	var data = {"subject" : ["java","jsp","spring"]};
	//alert(data.subject);
	//alert(data['subject']);
	var arr=data.subject;
	//alert(typeof arr + " " + (arr instanceof Array));
	for(index in arr)
		alert(arr[index]+"\n");
}
</script>
<script type="text/javascript">
process();
</script>
</head>
<body>

</body>
</html>