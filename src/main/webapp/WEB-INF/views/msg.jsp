<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<c:if test="${msg ne null }">
	<h5 style="text-align:center;color:green;padding:10px;">${msg}</h5>
</c:if>
<c:if test="${error ne null }">
	<h5 style="text-align:center;color:red;padding:10px;">${error }</h5>
</c:if>