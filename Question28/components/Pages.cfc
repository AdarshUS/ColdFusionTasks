<cfcomponent >
  <cffunction name="fetchPage" access="public" returntype="query" >
    <cfquery name="result"  datasource="cf_tutorial">
      SELECT pageid,pageName,pageDescription from PageTable     
    </cfquery>
    <cfreturn result>  
  </cffunction>

  <cffunction name="fetchRow" access="public" returntype="query" >
    <cfargument name="pageid" type="string">
    <cfquery name="result"  datasource="cf_tutorial">
      SELECT pageid,pageName,pageDescription from PageTable where pageid = <cfqueryparam value ='#arguments.pageid#'>     
    </cfquery>
    <cfreturn result>  
  </cffunction>

  <cffunction name="insertPage"  access="public" returntype="void">
    <cfargument name="pageName" type="string" required="true" >
    <cfargument name="pageDesc"  type="string" required="true">
    <cfquery  name="insertpages" datasource="cf_tutorial">      
      INSERT INTO PageTable(pageName,pageDescription)  values('#arguments.pageName#','#arguments.pageDesc#')      
    </cfquery> 
    <cflocation url="./adminPage.cfm" >
  </cffunction>

  <cffunction name="deletePage"  access="public" returntype="void">
    <cfargument name="pageid"  type="string"  required="true">
    <cfquery  name="deletepage" datasource="cf_tutorial">
      DELETE FROM PageTable WHERE pageid = <cfqueryparam  value="#arguments.pageid#" cfsqltype="cf_sql_varchar">      
    </cfquery>
    <cflocation url="./adminPage.cfm" >
  </cffunction>

  <cffunction name="editPage"  access="public" returntype="void">
    <cfargument name="pagename"  type="string" required="true">
    <cfargument name="pagedesc"  type="string" required="true">
    <cfargument name="pageid"  type="string" required="true">
    <cfquery  name="deletepage" datasource="cf_tutorial">
      UPDATE PageTable SET pageName = <cfqueryparam value = '#arguments.pagename#'>,pageDescription = <cfqueryparam value = '#arguments.pagedesc#'> where pageid = <cfqueryparam value = '#arguments.pageid#'>
    </cfquery>
    <cflocation url="./adminPage.cfm" >
  </cffunction>
</cfcomponent>