<!--- testing values --->
<cfparam name="name" default="No name">
<cfparam name="email" default="Test email">
<cfparam name="tel" default="No telephone">
<cfparam name="msg" default="No message">


<cfmail server="localhost"
	username="info@corkstonemason.com"
	password="elmlodge"
	port="25"
	useSSL="no"
	to="ian.osullivan@gmail.com"
	bcc="ian.osullivan@gmail.com"
	from="info@corkstonemason.com"
	subject="Website email">
Name: #name#
Email: #email#

Message:
#msg#	

</cfmail>
