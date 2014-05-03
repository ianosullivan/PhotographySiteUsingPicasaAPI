<cfoutput>
<cfset feed_source = Trim(album.link[1].href & "?hl=en_US&alt=rss&kind=photo&imgmax=720")>

<cffeed name="album_RSS" source="#feed_source#">

<!---<h3>#picassa_RSS.image.title#</h3>--->
<p>#album_RSS.description#</p>


<!--- TEsting --->

<!--- Can't get the fucking title --->

<!--- <cfdump var="#album_RSS.item[1]#"> --->
<!--- 
<cfdump var="#album_RSS.item[1].description#">
<cfdump var="#album_RSS.item[1].description.tostringvalue()#">


<cfset s = StructNew()>
<cfset s.value = "boo">

<cfdump var="#s#">
<cfdump var="#s.value#">
 --->
<!--- TEsting --->



<!--- Loop through picasa RSS feed and output thumbnails --->
<cfloop array="#album_RSS.item#" index="i">
	<a href="#i.group.content.url#" title="#i.title#"><img alt="img" src="#i.group.thumbnail[2].url#" class="picture"></a>
</cfloop>
</cfoutput>
