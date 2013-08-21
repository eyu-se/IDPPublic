SAGridIdP
=========

Code for the web interface to the Catch-All IdP of South Africa. 

This package has been slightly modified from source provided by Marco Fargetta (marco.fargetta@ct.infn.it) who may be contacted for any further details regarding the design of the project. It has been originally developed for the GARR IdPOpen, and in this context is being extended for the ei4Africa project to support the various African IdPs being developed.

The package is developed using Struts with Netbeans. These libraries are necessary to compile the code and are distributed with this project. 

Overview of functionality
=========================
This is a web frontend to the Identity Provider service. The IdP is based on Shibboleth - it is assumed that you already have a working Shibboleth web service running. This frontend is simply an easy way to present a public face to the IdP, but also provide a registration page for potential users. 

There is a predefined workflow for accepting new users: 
  1. User fills in a form on the registration page
  2. An email is sent to the user with the email provided, by the service, which prompts the user to confirm their request.
  3. The request confirmation is sent to the IdP administrator
  4. The IdP administrator logs into the IdP and is presented with a table of requests describing the pending requests and a button to approve or deny the requests
  5. Once a request is denied or accepted, a final email is sent to the user; If a user is accepted, the identity is automatically inserted into the LDAP backend (provided this has been correctly configured)

Customisation
=============

This code has been modified from the IdPOpen project. In order to customise it for your IdP, you need to take into account a couple of technical details regarding the ldap directory backend, tomcat configuration and firewall, apart from the changes to the jsp pages and images.

  1. ldap.properties : the ldap.properties file is necessary to configure the communication with the LDAP directory backend which contains the identities of the IdP. You should configure this file according to your particular directory location, structure and permissions. 
  2. hibernate.cfg.xml: edit the path to the hibernate persistent storage :  
```xml 
  <property name="hibernate.connection.url">jdbc:hsqldb:file:/tmp/test/</property>
``` 
  3. struts.xml : this file contains the confguration of the controller part of the MVC application. Edit it to reflect your particular taste, with relevant information regarding the contact details, etc. 
  4. context.xml : put your mail server into the relevant section
  5. web / img : put your institute's logo and other artwork you would like into this directory
  6. web / WEB-INF : edit header.jspf and footer.jspf accordingly 
  7. various content in jsp files: you can edit the jsp files in web / according to your taste.

Compilation
===========

By importing the project into Netbeans, you can compile the project, which will generate the war and deploy it. This can be tested on your laptop before deploying the war to the production idp machine - you can check layout, content, design, etc.


Tomcat configuration
====================

The applications is designed to run under the tomcat6 webserver. 
#TODO

