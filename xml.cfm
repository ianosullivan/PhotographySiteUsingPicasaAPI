<!--- 
<cfhttp method="get" url="https://picasaweb.google.com/data/feed/api/user/vincentmanningphotography" result="xml_content">	

<cfset xmlResult = XmlParse(REReplace( xml_content.FileContent, "^[^<]*", "", "all" )) />

<cfdump var="#xmlResult#">
 --->


<cffeed name="picassa_RSS" source="https://picasaweb.google.com/data/feed/api/user/115219827040523739002/albumid/5837345031536767761?alt=rss&kind=photo&hl=en_US&imgmax=720">
<cfdump var="#picassa_RSS#">