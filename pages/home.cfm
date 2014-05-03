<!---<h3>About me and my work</h3>--->
<p>
	<!--- Output the first image on the HOME page --->
	<cfoutput>
	<span style="float:right; margin:10px; z-index:0">
		<!--- <iframe width="420" height="315" src="http://www.youtube-nocookie.com/embed/yqR7uoD4QIY" frameborder="0" allowfullscreen></iframe> --->
		<!--- Get the colour pop feed from picassa --->
		<!--- <cffeed name="home_RSS" source="https://picasaweb.google.com/data/feed/base/user/115219827040523739002/albumid/5820822765470442897?alt=rss&kind=photo&authkey=Gv1sRgCNzWi4no2sv6nQE&hl=en_US"> --->
		<cffeed name="home_RSS" source="https://picasaweb.google.com/data/feed/base/user/115219827040523739002/albumid/5820822765470442897">
		<!---
		<cfdump var="#home_RSS.entry[1]#">
		--->
		<cfset random_num = RandRange(1, ArrayLen(home_RSS.entry))>

		<img id="home_sample" src="#home_RSS.entry[random_num].content[1].src#" alt="sample"> 
		
		<!---img/home_sample.png--->
	</span>
	<!---<img src="#home_RSS.item[1].group.content.url#" title="Click to see more pictures of the apartment" id="main_image">--->
	</cfoutput>
	Fáilte. <br/>
	
	Welcome to my website. My name is Vincent Manning. I grew up on the Dingle Peninsula in West Kerry and have been inspired to photography 
	by the vibrancy and textures of the landscape. Growing up in a place once described by National Geographic Magazine as ’the most beautiful 
	place on earth’ made it an ideal canvas and growing up looking at the photographs from around the world made me want to go and see with my own eyes and my own lens.
</p>
<p>
	Here you will see some of what I have taken in the last few years. After a long time on the road I
	realised what Ireland has to offer and vowed to see as much of it as I could.As I travel this portfolio
	will continue to grow and develop so make sure to keep up with new images being updated. My
	camera is always with me so updates will be regular!
</p>
<p>
	Tá súil agam go mbainfidh tú sár taithneamh as a bheith ag féachaint ar na griangrafanna seo pé áit
	in bhfuil tú agus má tá suim agat ceann nó dhó a chrochadh ar do bhalla féin téir i dteagmháil ar on
	seoladh ríomhphoist thuas.
</p>
<p>
	If you wish to contact me do so by clicking the link above.
</p>