<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/introduction/cdn-links" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="semverUrl" value="https://semver.org/"/>

<a name="pageStart"></a>
<div class="black-line"></div>
<div class="page versioning-policy-page">
	<h1>Политика управления версиями</h1>
	
	<br/>
	
	<p class="introduction">
		React следует <b><a href="${semverUrl}">семантическому управлению версиями (semver)</a></b>.
	</p>
	
	<br/>
	
	<p>
		Это означает, что с номером версии <b>x.y.z</b>:
	</p>
	
	<ul>
		<li>
			<p>
				Когда выпускаются <b>критические изменения</b>, мы делаем <b>major
				релиз</b>, изменяя число <b>x</b> (например, с 15.6.2 до 16.0.0).
			</p>
		</li>
		
		<li>
			<p>
				Когда выпускаются <b>новые функции</b>, мы делаем <b>minor
				релиз</b>, изменяя число <b>y</b> (например, с 15.6.2 до 15.7.0).
			</p>
		</li>
		
		<li>
			<p>
				Когда выпускаются <b>исправления ошибок</b>, мы делаем <b>patch
				релиз</b>, изменяя число <b>z</b> (например, с 15.6.2 до 15.6.3).
			</p>
		</li>
	</ul>
	
	<p>
		Major релизы могут также содержать новые функции.
		Любой релиз может включать исправления ошибок.
	</p>
	
	<br/>
	<br/>
	<div class="gray-line"></div>
	<h2>Критические изменения</h2>
	<br/>
	
	<p>
		Критические изменения неудобны для всех, поэтому мы стараемся
		свести к минимуму количество major выпусков - например, React 15 был
		выпущен в апреле 2016 года, а React 16 был выпущен в сентябре 2017 года.
		React 17 не ожидается до 2019 года.
	</p>
	
	<p>
		Вместо этого мы выпускаем новые функции в minor версиях. Это означает,
		что minor релизы часто более интересны и интригующи, чем major, несмотря
		на их скромное название.
	</p>
	
	<br/>
	<br/>
	<div class="gray-line"></div>
	<h2>Стремление к стабильности</h2>
	<br/>
	
	<p>
		Изменяя React с течением времени, мы стараемся свести к минимуму усилия,
		необходимые для использования преимуществ новых функций. Когда это возможно,
		мы будем поддерживать работу старого API, даже если он будет помещен в отдельный пакет.
		Например, миксины не поощрялись в течение многих лет, но по сей день они поддерживаются
		с помощью <code>create-react-class</code>, и многие кодовые базы продолжают использовать их в
		стабильном, устаревшем коде.
	</p>
	
	<p>
		Более миллиона разработчиков используют React, совместно поддерживая
		миллионы компонентов. Одна только кодовая база Facebook имеет более 50 000
		компонентов React. Это означает, что нам нужно максимально упростить апгрейд
		до новых версий React. Если мы сделаем большие изменения без пути миграции,
		люди застрянут на старых версиях. Мы тестируем эти пути обновления на самом Facebook -
		если наша команда из менее чем 10 человек может обновить более 50 000 компонентов,
		то мы надеемся, что обновление будет управляемым для всех, кто использует React. Во многих
		случаях мы пишем автоматизированные сценарии для обновления синтаксиса компонентов,
		которые затем включаем в релиз с открытым исходным кодом для всех желающих.
	</p>
	
	<br/>
	<br/>
	<div class="gray-line"></div>
	<h2>Постепенное обновление с помощью предупреждений</h2>
	<br/>
	
	<p>
		Development сборки React содержат много полезных предупреждений. По
		возможности, мы добавляем предупреждения при подготовке к будущим критическим
		изменениям. Таким образом, если в вашем приложении нет предупреждений,
		связанных с последним релизом, оно будет совместимо со следующим major релизом. Это
		позволяет вам обновлять приложения по одному компоненту за раз.
	</p>
	
	<p>
		Предупреждения в режиме разработки не влияют на поведение
		вашего приложения во время выполнения. Таким образом, вы можете
		быть уверены, что ваше приложение будет вести себя одинаково в
		development и production сборках - отличия состоят только в том,
		что production сборка не будет регистрировать предупреждения и
		что она более эффективна. (Если вы когда-нибудь заметите иное, пришлите проблему.)
	</p>
	
	<br/>
	<br/>
	<div class="gray-line"></div>
	<h2>Что считается критическим изменением?</h2>
	<br/>
	
	<p>
		Как правило, мы не изменяем номер major версии для изменений в:
	</p>
	
	<ul>
		<li>
			<p>
				<b>Предупреждения в режиме разработки</b>. Поскольку они не влияют
				на поведение в продакшене, мы можем добавлять новые предупреждения
				или изменять существующие между major версиями. Фактически это то,
				что позволяет нам надежно предупреждать о предстоящих критических изменениях.
			</p>
		</li>
		
		<li>
			<p>
				<b>API, начинающиеся с unstable_</b>. API в которых мы еще не уверены
				предоставляются в качестве экспериментальных функций. Выпуская их с
				префиксом <code>unstable_</code>, мы можем быстрее выполнять итерации и
				скорее получить стабильный API.
			</p>
		</li>
		
		<li>
			<p>
				<b>Альфа и канареечные версии React</b>. Мы предоставляем альфа-версии
				React как способ раннего тестирования новых функций, но нам нужна гибкость,
				чтобы вносить изменения в зависимости от того, что мы узнали в альфа-периоде.
				Если вы используете эти версии, обратите внимание, что API могут измениться
				до стабильной версии.
			</p>
		</li>
		
		<li>
			<p>
				<b>Недокументированные API и внутренние структуры данных</b>. Если
				вы обращаетесь к внутренним именам свойств, таким как
				<code>__SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED</code> или
				<code>__reactInternalInstance$uk43rzhitjg</code>, никаких гарантий нет. Вы сами по себе.
			</p>
		</li>
	</ul>
	
	<p>
		Эта политика разработана для того, чтобы быть прагматичной: конечно,
		мы не хотим причинять вам головную боль. Если бы мы изменяли major версию
		для всех этих изменений, мы бы в конечном итоге навыпускали большое колличество major версий
		и принесли большие страдания сообществу. Это также означало бы, что мы не
		можем добиться прогресса в улучшении React так быстро, как нам бы этого хотелось.
	</p>
	
	<p>
		Тем не менее, если мы ожидаем, что изменение из этого списка вызовет
		широкие проблемы в сообществе, мы все равно сделаем все возможное,
		чтобы обеспечить постепенный путь миграции.
	</p>
	
	<%--
	<ul>
		<li>
			<p>
			
			</p>
		</li>
	</ul>
	--%>
	<%-- <app:alert title="Внимание!" type="warning"></app:alert> --%>
	<%-- <code></code> --%>
	<%-- <b></b> --%>
	<%-- <code>&lt; &gt;</code> --%>
	<%-- <b><a href="${}"></a></b> --%>
	<%-- <b><a href="#"></a></b> --%>
	<%-- <a href="#"></a> --%>

</div>

<c:url var="prevPageUrl" value="file-structure"/>
<c:url var="nextPageUrl" value="virtual-dom-and-internals"/>

<app:page-navigate
		pageStartAncor="pageStart"
		prevPageUrl="${prevPageUrl}"
		nextPageUrl="${nextPageUrl}"
/>