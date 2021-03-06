<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true" %>

<cd:code-example-decorator codePenUrl="${codePenUrl}">
    <pre class="prettyprint">
        <code class="language-javascript">
  &lt;form&gt;
    &lt;label&gt;
      Name: &lt;input type="text" name="name" /&gt;
    &lt;/label&gt;
    &lt;input type="submit" value="Submit" /&gt;
  &lt;/form&gt;</code>
    </pre>
</cd:code-example-decorator>