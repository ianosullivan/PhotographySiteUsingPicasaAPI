<!--- Get the picture feed from picassa --->
<!--- the URL parameter "imgmax=720" is all important here. It allows bigger images to come in through the feed. For more see https://developers.google.com/picasa-web/docs/2.0/reference#Parameters  --->
<cffeed name="picassa_RSS" source="https://picasaweb.google.com/data/feed/base/user/115219827040523739002/albumid/5823607797503540433?alt=rss&kind=photo&authkey=Gv1sRgCP_J2--K-qDTeA&hl=en_US&imgmax=720">

<cfoutput>

<!---<h3>#picassa_RSS.image.title#</h3>--->
<p>#picassa_RSS.description#</p>

<!--- Loop through picasa RSS feed and output thumbnails --->
<cfloop array="#picassa_RSS.item#" index="i">
	<a href="#i.group.content.url#" title="#i.title#"><img alt="img" src="#i.group.thumbnail[2].url#" class="picture"></a>
</cfloop>
</cfoutput>
