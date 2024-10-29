
<cfset rate = FORM.rate>
  <cfif rate EQ 5> 
    <cfoutput> 
     Very Good 
    </cfoutput>
  <cfelseif rate EQ 4>
    <cfoutput>
       Good
    </cfoutput>
  <cfelseif rate EQ 3>
    <cfoutput>
       Fair
    </cfoutput>
  <cfelseif rate LT 3>
    <cfoutput>
      Ok
    </cfoutput>
  </cfif> 
