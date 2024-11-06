<cfcomponent>
  <cffunction  name="sendMail" access="public" returnType="void">
    <cfargument  name="babyName" type="string" required="true">
    <cfargument  name="receiverMail" type="string" required="true">
    <cfargument  name="birthdaytext" type="string" required="true">
    <cfargument  name="image">
  
    <cfmail  from="adarshus1999@gmail.com"  subject="birthday"  to="abhijithff59@gmail.com" server="smtp.gmail.com" username="adarshus1999@gmail.com" password="Sonyericsson@321" port="587">
      Happy Birthday man
      
    </cfmail>
  </cffunction>
</cfcomponent>