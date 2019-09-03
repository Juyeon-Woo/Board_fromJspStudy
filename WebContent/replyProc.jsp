<%@ page contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="bMgr" class="board.BoardMgr"/>
<jsp:useBean id="reBean" class="board.BoardBean"/>
<jsp:setProperty property="*" name="reBean"/>
<%
	bMgr.replyUpBoard(reBean.getRef(), reBean.getPos());
	bMgr.replyBoard(reBean);
	String nowPage = request.getParameter("nowPage");
	response.sendRedirect("list.jsp?nowPage="+nowPage);
%>