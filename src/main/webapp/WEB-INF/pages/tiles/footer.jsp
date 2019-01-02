<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wgt" tagdir="/WEB-INF/tags/widget" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<c:url var="termsOfUseUrl" value="/terms-of-use"/>
<c:url var="contactsUrl" value="/contacts"/>
<c:url var="lastUpdateUrl" value="https://github.com/stsiushkevich/learn-reactjs/pulls?q=is%3Apr+is%3Aclosed"/>

<lt:layout cssClass="container text-center">
	<ul class="footer-nav">
		<li class="footer-nav__link"><div style="padding: 8px">&#9400; 2017 Тюшкевич Сергей</div></li>
		<li class="footer-nav__link"><a href="${contactsUrl}" class="btn">Контакты</a></li>
		<li class="footer-nav__link"><a href="${termsOfUseUrl}" class="btn">Соглашение</a></li>
		<li class="footer-nav__link">
			<a href="${lastUpdateUrl}" style="color: #5bbbce; font-weight: bold" class="btn">
				Последнее обновление: 02.02.2019
			</a>
		</li>
	</ul>
</lt:layout>