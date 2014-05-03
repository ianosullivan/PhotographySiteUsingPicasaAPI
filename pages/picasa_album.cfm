<!--- album_id & gallery_username are passed in through AJAX call --->

<cfoutput>
<!--- <cfset feed_source = Trim(album.link[1].href & "?hl=en_US&alt=rss&kind=photo&imgmax=720")> --->
<!--- This worked
<cfset feed_source = Trim("https://picasaweb.google.com/data/feed/api/user/105055880249000935430/albumid/" & album_id & "?hl=en_US&alt=rss&kind=photo&imgmax=720")> --->
<cfset feed_source = Trim("https://picasaweb.google.com/data/feed/api/user/" & username & "/albumid/" & album_id & "?hl=en_US&alt=rss&kind=photo&imgmax=720")>


<cffeed name="album_RSS" source="#feed_source#">

<p>#album_RSS.description#</p>

<!--- Loop through picasa RSS feed and output thumbnails --->
<cfloop array="#album_RSS.item#" index="i">
	
	<cfset s = i.description>
	
	<cfif StructKeyExists(s, 'value')>
		<cfset img_title = s.value>
	<cfelse>
		<cfset img_title = album_RSS.title>
	</cfif>
	<!--- class 'img' used for fade in --->
	<a class="img" href="#i.group.content.url#" title="#img_title#"><img alt="img" src="#i.group.thumbnail[2].url#" class="picture"></a>
</cfloop>
</cfoutput>
