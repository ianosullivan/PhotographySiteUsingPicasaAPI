<!--- Get the picture feed from picassa --->
<cffeed name="picassa_RSS" source="https://picasaweb.google.com/data/feed/base/user/115219827040523739002/albumid/5820822765470442897?alt=rss&kind=photo&authkey=Gv1sRgCNzWi4no2sv6nQE&hl=en_US">

<cfoutput>
<!---<h3>#picassa_RSS.image.title#</h3>--->
<p>#picassa_RSS.description#</p>
								   
<!--- Loop through picasa RSS feed and output thumbnails --->
<cfloop array="#picassa_RSS.item#" index="i">
	<a href="#i.group.content.url#" title="#i.title#"><img alt="img" src="#i.group.thumbnail[2].url#" class="picture"></a>
</cfloop>
</cfoutput>
