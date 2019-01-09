<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true"%>

<cd:code-example-decorator>
<pre class="prettyprint">
    <code class="language-javascript">
    <cd:hl>class Square extends React.Component {</cd:hl>
      <cd:hl>render() {</cd:hl>
        return (
          &lt;button
              className="square"
              <cd:hl>onClick={() => this.props.onClick()}</cd:hl>
          >
            <cd:hl>{this.props.value}</cd:hl>
          &lt;/button>
        );
      }
    }
    </code>
</pre>
</cd:code-example-decorator>