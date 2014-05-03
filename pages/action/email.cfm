<!--- testing values --->
<cfparam name="name" default="No name">
<cfparam name="email" default="Test email">
<cfparam name="tel" default="No telephone">
<cfparam name="msg" default="No message">


<cfmail server="localhost"
	username="contact@example.com"
	password="pword"
	port="25"
	useSSL="no"
	to="vman@contact@example.com; Example@gmail.com;"
	bcc="another_guy@gmail.com"
	from="contact@contact@example.com"
	subject="Website email">
Name: #name#
Email: #email#

Message:
#msg#	

</cfmail>
