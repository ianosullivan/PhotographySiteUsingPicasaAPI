<p>
	Please fill in the form below and I'll get back to you very soon. 
	If you prefer give me a call on <a href="tel:0878249466">087-8249466</a>
</p>

<form name="contact" id="contact" action="action/pages/sendEmail.cfm">
	<table style="width:100%">
		<tr>
			<!--- <td style="width:110px"><label for="name">Your Name:</label></td> --->
			<td><input type="text" name="name" id="name" placeholder="Enter your name..." /></td>
		</tr>
		<tr>
			<!--- <td><label for="email">Email:</label></td> --->
			<td><input type="text" name="email" id="email" placeholder="Enter your email..." /></td>
		</tr>
		<tr>
			<!--- <td><label for="tel">Phone Number:</label></td> --->
			<td><input type="text" name="tel" id="tel" placeholder="Enter your number..."/></td>
		</tr>
		<tr>
			<!--- <td><label for="msg" style="top:4px; position:relative;">Message:</label></td> --->
			<td>
				<textarea name="msg" id="msg"  placeholder="Add a message..."></textarea>
			</td>
		</tr>
	</table>
</form>

<button style="margin-top:15px;" class="button" onClick="ContactMail()">Send Message</button>
