<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="title" required="true"%>
<%@ attribute name="level" type="java.lang.Integer"%>
<%
String headStartTag = null;
String headEndTag = null;
if(level==null){
	headStartTag="<hl>";
	headEndTag="</hl>";

}else if(level==1){
	headStartTag="<hl>";
	headEndTag="</hl>";	
}else if(level==2){
	headStartTag="<hl>";
	headEndTag="</hl>";	
}else if(level==3){
	headStartTag="<hl>";
	headEndTag="</hl>";	
}
%>
<%= headStartTag %>
${title}
<%= headEndTag  %>