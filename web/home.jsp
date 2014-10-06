<%-- 
    Document   : Home
    Created on : 04-Jan-2012, 13:45:36
    Modified   : 08-Aug-2013 
    Author     : Bruce Becker
--%>
<% pageContext.setAttribute("title", "Home"); %>

<%@include file="WEB-INF/jspf/header.jspf" %>
<h2>Home</h2>
<p>
The CHANGEME Identity Provider is a <a href="http://saml.xml.org/">SAML</a> standard-based service powered by <a href="http://shibboleth.internet2.edu">Shibboleth</a> and  managed by <a href="http://YOUR.INSTITUTE.HERE">CHANGEME</a>. It allows people to use a single identity when they sign into websites, Science Gateways and other service portals that require user authentication.
</p>
<p>
This IdP is a member of <a href="http://gridp.ct.infn.it">Grid IDentity Pool (GrIDP) </a>federation and currently authenticates the users of several <a href="service-providers.html">Service Providers</a>
</p>
<p>If your institute does not have an Identity Provider which forms part of a national or catch-all federation, you can <a target="_blank" href="register">register to the catch-all IdP</a></p>


                    <p>
                       If you are interested in either using this IdP to authenticate users of your website(s), or registering it as an Identity Provider of your Identity Federation(s), please contact CHANGEME at CHANGEME.
                    </p>
                    <p>For more information, please see <a href="CHANGEME">the CHANGEME website</a>.</p>


<%@include file="WEB-INF/jspf/footer.jspf" %>
