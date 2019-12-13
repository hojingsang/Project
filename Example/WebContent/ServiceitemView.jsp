<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.* , service.ServiceDTO" %>
<% request.setCharacterEncoding("utf-8"); %>

<table>
	<tr>
		<th><h4>게시글 읽기</h4></th>
	</tr>
	<tr>
		<td>[제목] ${service.text} </td>
	</tr>
	<tr>
		<td>[작성자] ${service.nickname} </td>
	</tr>
	<tr>
		<td> [작성일시] ${service.regdate} </td>
	</tr>
	<tr>
		<td>-----------------------------------------------------</td>
	</tr>
	<tr>
		<td><pre>${service.content} </pre></td>
	</tr>
	<tr>
		<td rowspan="10" align="center">
			<a href = 'service-update-input?sno=${service.sno}'>[수정]</a>
			<a href = 'service-delete?sno=${service.sno}'>[삭제]</a><a href='Service'>[목록으로]</a>
		</td>
	</tr>
</table>