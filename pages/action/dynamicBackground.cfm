<!--- get a feed of the big backgrounds 
&max-results=1--->
<cffeed name="background_RSS" source="https://picasaweb.google.com/data/feed/base/user/115219827040523739002/albumid/5814859733780912881?alt=rss&kind=photo&authkey=Gv1sRgCNepgYjYhpmQCg&hl=en_US&imgmax=1600">
<!--- JSON version. Note alt param is json
<cffeed name="background_RSS" source="https://picasaweb.google.com/data/feed/base/user/115219827040523739002/albumid/5814859733780912881?alt=json&kind=photo&authkey=Gv1sRgCNepgYjYhpmQCg&hl=en_US&imgmax=1600">
This be used to dynamically change the background randomly
--->
<cfoutput>
<cfset random_num = RandRange(1, ArrayLen(background_RSS.item))>

<!--- Set body backgroud through jquery CSS --->
<script>
	$(function(){
		$('html').css('background-image', "url(../img/bg_pattern.png), url(#background_RSS.item[random_num].group.content.url#)");
	});
</script>
</cfoutput>