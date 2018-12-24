<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/updates/createReactApp-2.0" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="createReactAppUrl" value="https://github.com/facebook/create-react-app"/>
<c:url var="createReactAppAddingSassUrl" value="https://github.com/facebook/create-react-app/blob/master/packages/react-scripts/template/README.md#adding-a-sass-stylesheet"/>
<c:url var="createReactAppAddingCSSUrl" value="https://github.com/facebook/create-react-app/blob/master/packages/react-scripts/template/README.md#adding-a-css-modules-stylesheet"/>
<c:url var="babel7Url" value="https://babeljs.io/blog/2018/08/27/7.0.0"/>
<c:url var="fragmentsUrl" value="/core/fragments"/>
<c:url var="webpack4Url" value="https://medium.com/webpack/webpack-4-released-today-6cdb994702d4"/>
<c:url var="Url" value="https://jestjs.io/blog/2018/05/29/jest-23-blazing-fast-delightful-testing.html"/>
<c:url var="jest23Url" value="https://jestjs.io/blog/2018/05/29/jest-23-blazing-fast-delightful-testing#interactive-snapshot-mode"/>
<c:url var="jest23InteractiveSnapshotModeUrl" value=""/>
<c:url var="postCSSUrl" value="https://preset-env.cssdb.org/features#stage-3"/>
<c:url var="apolloUrl" value="https://github.com/leoasis/graphql-tag.macro#usage"/>
<c:url var="relayModernUrl" value="https://github.com/facebook/relay/pull/2171#issuecomment-411459604"/>
<c:url var="mdxUrl" value="https://github.com/facebook/create-react-app/issues/5149#issuecomment-425396995"/>
<c:url var="babelMacrosUrl" value="https://babeljs.io/blog/2017/09/11/zero-config-with-babel-macros"/>
<c:url var="svgUrl" value="https://github.com/facebook/create-react-app/blob/master/packages/react-scripts/template/README.md#adding-svgs"/>
<c:url var="yarnPlugNPlayUrl" value="https://github.com/yarnpkg/rfcs/pull/101"/>
<c:url var="proxyUrl" value="https://github.com/facebook/create-react-app/blob/master/packages/react-scripts/template/README.md#configuring-the-proxy-manually"/>
<c:url var="nodePackagesUrl" value="https://github.com/sindresorhus/ama/issues/446#issuecomment-281014491"/>
<c:url var="workboxUrl" value="https://developers.google.com/web/tools/workbox/"/>
<c:url var="releaseNotesUrl" value="https://github.com/facebook/create-react-app/releases/tag/v2.0.3"/>
<c:url var="issueTrackerUrl" value="https://github.com/facebook/create-react-app/issues"/>
<c:url var="migrationInstructionsUrl" value="https://gist.github.com/gaearon/8650d1c70e436e5eff01f396dffc4114"/>

<a name="pageStart"></a>
<div class="black-line"></div>
<div class="page create-react-app-2.0">
    <h1>Create React App 2.0: Babel 7, Sass и другое</h1>

    <wg:p><b>Октябрь 01, 2018 Джой Хаддад и Дэн Абрамов</b></wg:p>

    <br/>

    <p>
        Сегодня состоялся релиз приложения <b>Create React App 2.0</b>, который
        предоставил годичные улучшения в едином обновлении зависимостей
    </p>

    <p>
        Хотя сам сам по себе React не требует каких-либо зависимостей для билда, иногда
        бывает непросто написать сложное приложение без исполнителя тестов, минификатора
        продакшена и модульной кодовой базы. Начиная с самого первого релиза, цель
        <b><a href="${createReactAppUrl}">Create React App</a></b> состояла в том,
        чтобы помочь вам сосредоточиться на том, что важнее всего - на коде приложения, - и наладить
        для вас настройку сборки и тестирования.
    </p>

    <p>
        Многие из инструментов, на которые оно опирается, с тех пор также выпустили новые версии,
        содержащие новые функции и улучшения производительности: <b>Babel 7</b>, <b>webpack 4</b> и <b>Jest 23</b>. Однако
        обновление их вручную и обеспечение совместной работы требуют больших усилий. И это именно то,
        чем авторы <b><a href="${createReactAppUrl}">Create React App 2.0</a></b> были заняты последние несколько месяцев: <b>миграция конфигурации и
        зависимостей, так что вам не нужно делать это самостоятельно.</b>
    </p>

    <p>
        Теперь, когда <b><a href="${createReactAppUrl}">Create React App 2.0</a></b> вышел из бета-версии, давайте посмотрим,
        что нового появилось и каким образом вы можете это попробовать.
    </p>

    <app:alert title="Внимание!" type="warning">
        Не испытывайте психологическое давление от необходимости что-либо обновить. Если вы удовлетворены текущим набором функций, его
        производительностью и надежностью, вы можете продолжать использовать версию, на которой вы сейчас находитесь!
        Также было бы неплохо позволить выпуску 2.0 стабилизироваться, прежде чем переходить на него в продакшене.
    </app:alert>

    <br/>
    <h2>Что нового?</h2>

    <p>Вот краткое резюме того, что нового в данном релизе:</p>

    <ul>
        <li><p>🎉 Больше параметров стиллизации: вы можете использовать модули
            <b><a href="${createReactAppAddingSassUrl}">Sass</a></b> и
            <b><a href="${createReactAppAddingCSSUrl}">CSS</a></b> из коробки.</p></li>

        <li><p>🐠 Мы обновились до <b><a href="${babel7Url}">Babel 7</a></b>, включающего
            поддержку синтаксиса <b><a href="${fragmentsUrl}">фрагментов React</a></b> и множество исправлений.</p></li>

        <li><p>📦 Мы обновились до <b><a href="${webpack4Url}">webpack 4</a></b>, который автоматически разбивает JS бандлы более интеллектуально.</p></li>

        <li><p>🃏 Мы обновились до <b><a href="${jest23Url}">Jest 23</a></b>, который включает в
            себя <b><a href="${jest23InteractiveSnapshotModeUrl}">интерактивный режим для просмотра снимков</a></b>.</p></li>

        <li><p>💄 Мы добавили <b><a href="${postCSSUrl}">PostCSS</a></b>, чтобы вы могли использовать новые функции CSS в старых браузерах.</p></li>

        <li><p>💎 Вы можете использовать <b><a href="${apolloUrl}">Apollo</a></b>, <b><a href="${relayModernUrl}">Relay Modern</a></b>,
            <b><a href="${mdxUrl}">MDX</a></b> и другие сторонние преобразования <b><a href="${babelMacrosUrl}">Babel Macros</a></b>.</p></li>

        <li><p>🌠 Теперь вы можете <b><a href="${svgUrl}">импортировать SVG как компонент React</a></b> и использовать его в JSX.</p></li>

        <li><p>🐈 Вы можете попробовать экспериментальный режим <b><a href="${yarnPlugNPlayUrl}">Yarn Plug’n’Play</a></b>, который удаляет node_modules.</p></li>

        <li><p>🕸 Теперь вы можете <b><a href="${proxyUrl}">подключить свою собственную прокси-реализацию</a></b> в режиме разработки чтобы соответствовать вашему бэкэнд-API.</p></li>

        <li><p>🚀 Теперь вы можете использовать <b><a href="${nodePackagesUrl}">пакеты, написанные для последних версий Node</a></b>, не ломая билд.</p></li>

        <li><p>✂ Теперь при желании вы можете получить меньший бандл CSS, если планируете использовать только современные браузеры.</p></li>

        <li><p>👷‍♀ Service workers теперь подключены и построены с использованием Google <b><a href="${workboxUrl}">Workbox</a></b>.</p></li>
    </ul>

    <p><b>Все эти функции работают "из коробки"</b> - чтобы включить их, следуйте приведенным ниже инструкциям.</p>

    <br/>
    <h2>Старт проекта с Create React App 2.0</h2>

    <p>Вам не нужно ничего специально обновлять. Начиная с сегодняшнего дня, когда вы запускаете
        команду <code>create-react-app</code>, она по умолчанию будет использовать версию шаблона <b>2.0</b>. Великолепно!</p>

    <p>
        Если по какой-то причине вы <b>хотите использовать старый шаблон 1.x</b>, вы можете сделать это,
        передав <code>--scripts-version=react-scripts@1.x</code> в качестве аргумента для <code>create-react-app</code>.
    </p>

    <br/>
    <h2>Обновление проекта до Create React App 2.0</h2>

    <p>Обновление невыгруженного проекта до Create React App 2.0 как правило должно
        быть простым. Откройте файл <b>package.json</b> в корне вашего проекта и найдите в нем поле <code>react-scripts</code>.</p>

    <p>Затем измените его версию на <code>2.0.3</code>:</p>

    <ce:code-example-1/>

    <p>Выполните команду <code>npm install</code> (или <code>yarn</code>, если вы его используете). <b>Для многих проектов этого
        однострочного изменения достаточно для обновления!</b></p>

    <p>Вот еще несколько советов, которые помогут вам начать.</p>

    <p><b>Когда вы запустите <code>npm start</code> в первый раз после апгрэйда</b>, вы получите запрос о том,
        какие браузеры вы хотите поддерживать. Нажмите <code>y</code>, чтобы принять значения по умолчанию.
        Они будут записаны в ваш <code>package.json</code>, и затем вы можете редактировать их в любое время.
        <b>Create React App</b> будет использовать эту информацию для создания небольших или полифилл
        CSS-бандлов в зависимости от того, нацелены ли вы на современные браузеры или на старые.</p>

    <p><b>Если после апгрэйда <code>npm start</code> по-прежнему не работает</b>, ознакомьтесь с более подробными
        инструкциями по миграции в примечаниях к релизу. В этом релизе есть несколько ломающих изменений,
        но область их влияния ограничена, поэтому на их сортировку уйдет не более нескольких часов.
        Обратите внимание, что <b>поддержка старых браузеров теперь включена</b> для уменьшения размера полифилла.</p>

    <p><b>Если вы ранее выгрузили (выполнили <code>eject</code>) приложение, но теперь хотите провести апгрэйд</b>, одно из распространенных
        решений - найти коммиты, в которых вы выгрузили приложение (и любые последующие коммиты, изменяющие
        конфигурацию), отменить их, провести апгрэйд и позже при необходимости снова выгрузить. Также возможно,
        что функция, которую вы выгрузили (например, модули Sass или CSS), теперь поддерживается "из коробки".</p>

    <app:alert type="warning" title="Внимание!">
        Из-за возможной ошибки в npm вы можете увидеть предупреждения о неудовлетворенных зависимостях.
        Вам стоит их игнорировать. Насколько нам известно, эта проблема отсутствует в Yarn.
    </app:alert>

    <br/>
    <h2>Ломающие изменения</h2>

    <p>Вот краткий список ломающих изменений в этом релизе:</p>

    <ul>
        <li><p>Node 6 больше не поддерживается.</p></li>

        <li><p>Поддержка старых браузеров (таких как IE 9 - IE 11) теперь включена c помощью отдельного пакета.</p></li>

        <li><p>Разбиение кода с помощью <code>import()</code> теперь ведет себя ближе к спецификации,
            в то время как <code>require.ensure()</code> отключен.</p></li>

        <li><p>Среда Jest по умолчанию теперь включает jsdom.</p></li>

        <li><p>Поддержка указания объекта в качестве <code>proxy</code> настройки была
            заменена поддержкой пользовательского модуля прокси.</p></li>

        <li><p>Поддержка расширения <code>.mjs</code> удалена, пока экосистема вокруг него не стабилизируется.</p></li>

        <li><p>Определения <code>PropTypes</code> автоматически удаляются из продакшен билдов.</p></li>

        <li><p>Если какой-либо из этих пунктов вас затрагивает, примечания к релизу 2.0.3 содержат более подробные инструкции.</p></li>
    </ul>

    <br/>
    <h2>Узнать больше</h2>

    <p>Вы можете найти полный список изменений в <b><a href="${releaseNotesUrl}">заметках о релизе</a></b>. Это был крупный релиз, и
        мы могли что-то пропустить. Пожалуйста, сообщайте о любых проблемах нашему <b><a href="${issueTrackerUrl}">трекеру</a></b>, и мы постараемся помочь.</p>

    <app:alert type="warning" title="Примечание">
        Если вы использовали альфа-версии 2.x, мы предоставляем для них <b><a href="${migrationInstructionsUrl}">отдельные инструкции по миграции</a></b>.
    </app:alert>

    <br/>
    <h2>Благодарности</h2>

    <p>Этот релиз был бы невозможен без нашего замечательного сообщества участников.
        Мы хотели бы поблагодарить Андреаса Седерстрёма, Клемента Хоанга, Брайана Нг, Кента С. Доддса, Аде Вианакрисна Фадлила,
        Андрея Ситника, Ро Саваджа, Фабиано Брито, Яна Сазерленда, Пита Нюкянена, Джеффри Посника,
        Джека Чжао, Тобиаса Коппера, Генри Чжу, Maël Nison, XiaoYan Li, Marko Trebizan, Marek Suscak,
        Mikhail Osher и многих других, кто предоставил обратную связь и тестирование для этого выпуска.</p>
</div>

<c:url var="prevPageUrl" value="react-profiler"/>
<c:url var="nextPageUrl" value="react-v16.6.0"/>

<app:page-navigate
        pageStartAncor="pageStart"
        prevPageUrl="${prevPageUrl}"
        nextPageUrl="${nextPageUrl}"
/>