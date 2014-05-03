<!--- 
<h3>Contact Form</h3>
 --->

<p><!---You can call me on <a href="tel:00353857895522">085-7895522</a>.---> Please let me know what photo and what size you are interested in purchasing. Thank you.</p>

<form name="contact" id="contact" action="action/pages/email.cfm">
	<table style="width:100%">
		<tr>
			<td style="width:110px"><label for="name">Your Name:</label></td>
			<td><input type="text" name="name" id="name" /></td>
		</tr>
		<tr>
			<td><label for="email">Email:</label></td>
			<td><input type="text" name="email" id="email" /></td>
		</tr>
		<!---<tr>
			<td><label for="tel">Phone Number:</label></td>
			<td><input type="text" name="tel" id="tel" /></td>
		</tr>--->
		<tr>
			<td><label for="msg" style="top:4px; position:relative;">Message:</label></td>
			<td>
				<textarea name="msg" id="msg"></textarea>
			</td>
		</tr>
	</table>
</form>

<button style="margin-top:15px;" class="button" onClick="ContactMail()">Send Message</button>
