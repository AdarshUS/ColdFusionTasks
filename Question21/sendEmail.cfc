<cfcomponent>
  <cffunction  name="sendMail" access="public" returnType="void">
    <cfargument  name="babyName" type="string" required="true">
    <cfargument  name="receiverMail" type="string" required="true">
    <cfargument  name="birthdaytext" type="string" required="true">
    <cfargument  name="image" type="any" required="true">

    

    <!--- <cfmail from="adarshtech1999@gmail.com" to="abhijithff59@gmail.com"subject="Sample e-mail from ColdFusion"type="text">
      hAPPY
    </cfmail> --->
    <!--- <cfset local.filePath = getTempDirectory() & uploadedFile.serverFile> --->
   

    <cfmail  from="adarshtech1999@gmail.com"  subject="birthday"  to="#arguments.receiverMail#" type="text">
     <cfmailparam file="#arguments.image#" disposition="attachment">
      #arguments.birthdaytext#      
    </cfmail>
  </cffunction>
</cfcomponent>

