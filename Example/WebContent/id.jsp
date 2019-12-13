<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<script type="text/javascript">
	function oncheck() {
		if(!idcheckfm.cid.value){
			alert('아이디를 입력하세요.');
			idcheckfm.cid.focus();
			return false;
		}
		
		if(!idcheckfm.cid.value.match(/^[a-z]+[0-9a-z]*$/g)){
			alert('아이디를 올바르게 입력하세요.');
			idcheckfm.cid.value;
			return false;
		}
		return true;
	}
</script>

<form action ="idcheck" name = "idcheckfm" method="post" onsubmit = "return oncheck()">
	아이디 : <input type = "text" name = "cid">
	<input type="submit" value ="중복체크">
</form>

<%
	if(request.getAttribute("result") != null) {
		String result = (String) request.getAttribute("result");
		if(result.equals("true")){ %>
		<script type="text/javascript">
			alert('이미 사용중인 아이디 입니다.');
		</script>
	<% } else { %>
		<script type="text/javascript">
			alert('사용 가능한 아이디 입니다.');
			opener.document.fm.id.value="${cid}";
			opener.fm.name.focus();
			window.self.close();
		</script>
<% }
}%>