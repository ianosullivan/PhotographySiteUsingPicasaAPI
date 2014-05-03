<cfoutput>

<cfset feed_source = Trim(album.link[1].href & "?hl=en_US&alt=rss&kind=photo&imgmax=720")>

<cffeed name="album_RSS" source="#feed_source#">

<!---<h3>#picassa_RSS.image.title#</h3>--->

<p>#album_RSS.description#</p>


<!--- Loop through picasa RSS feed and output thumbnails --->

<cfloop array="#album_RSS.item#" index="i">

	<a href="#i.group.content.url#" title="#i.title#"><img alt="img" src="#i.group.thumbnail[2].url#" class="picture"></a>

</cfloop>

</cfoutput>

