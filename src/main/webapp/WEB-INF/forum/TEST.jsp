
<!DOCTYPE html>
<html lang="en">
<head>
</head>

<body>
	
</body>
<script>

var d = new Date();
var updateTime = d.toLocaleString('zh-tw',{hour12:false});
if(updateTime.charAt(6)=="/"){
	var time1 = updateTime.slice(0,5)+"0"+ updateTime.charAt(5) + updateTime.slice(6);
	
	if(time1.charAt(9)==" "){
		var time2 = time1.slice(0,7)+"/0"+time1.slice(8);
		alert(time2);
	}
}
</script>
</html>