<!--- testing values --->
<cfparam name="name" default="No name">
<cfparam name="email" default="Test email">
<cfparam name="tel" default="No telephone">
<cfparam name="msg" default="No message">


<cfmail server="localhost"
	username="contact@vincentmanning.net"
	password="dinglelion"
	port="25"
	useSSL="no"
	to="vman@campus.ie; VincentManningPhotography@gmail.com;"
	bcc="ian.osullivan@gmail.com"
	from="contact@vincentmanning.net"
	subject="Website email">
Name: #name#
Email: #email#

Message:
#msg#	

</cfmail>
