<%-- DO NOT EDIT - GENERATED BY AgileWCS 
--%><%@ taglib prefix="cs" uri="futuretense_cs/ftcs1_0.tld"%><%@ taglib
	prefix="ics" uri="futuretense_cs/ics.tld"%><%@ taglib prefix="insite"
	uri="futuretense_cs/insite.tld"%><%@ taglib prefix="render"
	uri="futuretense_cs/render.tld"%><%@ page import="wcs.core.*"%><cs:ftcs><ics:if condition='<%=ics.GetVar("tid") != null%>'><ics:then><render:logdep cid='<%=ics.GetVar("tid")%>' c="Template" /></ics:then></ics:if><%
		String res = WCS.dispatch(ics, "agilewcs.page.Image");
		Sequencer seq = new Sequencer(res);
	%><%=seq.header()%><%
		while (seq.hasNext()) {
			Call c = seq.next();
			String name = c.getName();
			if (name.equalsIgnoreCase("RENDER:CALLTEMPLATE")) {
	%><render:calltemplate 
	    site='<%=c.getOnce("SITE")%>'
		ttype='<%=c.getOnce("TTYPE")%>' 
		tname='<%=c.getOnce("TNAME")%>'
		c='<%=c.getOnce("C")%>' 
		cid='<%=c.getOnce("CID")%>'
		slotname='<%=c.getOnce("SLOTNAME")%>' 
		tid='<%=c.getOnce("TID")%>'><%
			for (String k : c.keysLeft()) {
		%><render:argument name='<%=k%>' value='<%=c.getOnce(k)%>' /><%
			}
		%></render:calltemplate><%
		} /* end RENDER:CALLTEMPLATE */
	%><%
		if (name.equalsIgnoreCase("INSITE:CALLTEMPLATE")) {
	%><insite:calltemplate 
	    site='<%=c.getOnce("SITE")%>'
		ttype='<%=c.getOnce("TTYPE")%>' 
		tname='<%=c.getOnce("TNAME")%>'
		c='<%=c.getOnce("C")%>'
		cid='<%=c.getOnce("CID")%>'
		slotname='<%=c.getOnce("SLOTNAME")%>' 
		tid='<%=c.getOnce("TID")%>'><%
			for (String k : c.keysLeft()) {
		%><insite:argument name='<%=k%>' value='<%=c.getOnce(k)%>' /><%
			}
		%></insite:calltemplate><%
		} /* END INSITE:CALLTEMPLATE */
	%><%
		if (name.equalsIgnoreCase("RENDER:CALLELEMENT")) {
	%><render:callelement elementname='<%=c.getOnce("ELEMENTNAME")%>'><%
			for (String k : c.keysLeft()) {
		%><render:argument name='<%=k%>' value='<%=c.getOnce(k)%>' /><%
			}
		%></render:callelement><%
		} /* END RENDER:CALLELEMENT */
	%><%=seq.header()%><%
		}
	%></cs:ftcs>