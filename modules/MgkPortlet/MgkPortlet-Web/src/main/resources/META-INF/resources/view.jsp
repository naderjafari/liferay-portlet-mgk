<%@ include file="/init.jsp" %>


<%--&lt;%&ndash;&lt;%&ndash;%>--%>
<%--&lt;%&ndash;    long personId = ParamUtil.getLong(renderRequest, "personId");&ndash;%&gt;--%>
<%--&lt;%&ndash;    Person person = null;&ndash;%&gt;--%>
<%--&lt;%&ndash;    if (personId > 0) {&ndash;%&gt;--%>
<%--&lt;%&ndash;        person = PersonLocalServiceUtil.getPerson(personId);&ndash;%&gt;--%>
<%--&lt;%&ndash;    }&ndash;%&gt;--%>
<%--&lt;%&ndash;%>&ndash;%&gt;--%>

<%--&lt;%&ndash;<aui:input name="pId" type="hidden" value="<%= person.getPersonId() %>"/>&ndash;%&gt;--%>


<%--<div id="error">--%>
<%--    <c:if test="${!empty errors}">--%>
<%--        <ul>--%>
<%--            <c:forEach items="${errors}" var="error">--%>
<%--                <li style="color: red"><c:out value="${error}"></c:out></li>--%>
<%--            </c:forEach>--%>
<%--        </ul>--%>
<%--    </c:if>--%>
<%--</div>--%>


<portlet:renderURL var="showPersonURL">
    <portlet:param name="mvcRenderCommandName" value="/person/list"></portlet:param>
</portlet:renderURL>


<%--<c:if test='<%= PersonPermission.contains(permissionChecker, scopeGroupId, "ADD_ENTRY") %>'>--%>
    <portlet:renderURL var="addPersonURL">
        <portlet:param name="mvcPath" value="/edit_person.jsp"></portlet:param>
    </portlet:renderURL>
    <aui:button-row>
        <aui:button onClick="<%= addPersonURL.toString() %>" value="Add Person"></aui:button>
    </aui:button-row>

<%--</c:if>--%>
<%--    <portlet:renderURL var="addEntryURL">--%>
<%--        <portlet:param name="mvcPath" value="/guestbook/edit_entry.jsp" />--%>
<%--        <portlet:param name="guestbookId" value="<%=String.valueOf(guestbookId)%>" />--%>
<%--    </portlet:renderURL>--%>

<%--    <aui:button onClick="<%=addEntryURL.toString()%>" value="Add Entry"></aui:button>--%>


<aui:button-row>
    <aui:button onClick="<%= showPersonURL.toString() %>" value="show Persons"></aui:button>
</aui:button-row>