<cfcomponent displayname="Ad Rotator" hint="Ad Rotator">
	<!--- GetBanner method --->
	<cffunction access="public" name="GetBanner" returntype="struct" output="No" hint="Create the Ad Banner Structure">
		<cfset var Ads = "">
		<cfscript>
			//initalize banner arrays
			aAdBanner = ArrayNew(1);
			aAdPath = ArrayNew(1);
			aAdAlt = ArrayNew(1);
			request.cfa.webhtml5.ads = "webhtml5";
			request.cfa.webhtml5.LogStats = "webhtml5";
			request.cfa.webhtml5.username = "clarkmcg";
			request.cfa.webhtml5.security = "giv3ns11*";
		</cfscript>
		<CFQUERY NAME="qGetAds" datasource="#request.cfa.webhtml5.ads#" username="clarkmcg" password="giv3ns11*">
			SELECT      *
			FROM        adbanners
			WHERE		adID  >= 1 and adID <= 30
		</CFQUERY>
			<cfloop query="qGetAds" startrow="1" endrow="#qGetAds.recordcount#">
				<cfscript>
					//set the image path
					ArrayAppend(aAdBanner, qGetAds.imgURL);
					ArrayAppend(aAdPath, qGetAds.URL);
					ArrayAppend(aAdAlt, qGetAds.imgAlt);
				</cfscript>
		</cfloop>
		<cfscript>
			Ads = StructNew();
			StructInsert(Ads, "aAdBanner", aAdBanner);
			StructInsert(Ads, "aAdPath", aAdPath);
			StructInsert(Ads, "aAdAlt", aAdAlt);
		</cfscript>
		<cfreturn Ads>		
	</cffunction>
	<!--- GetSmallBanner method --->
	<cffunction access="public" name="GetSmallBanner" returntype="struct" output="No" hint="Create the Ad Banner Structure for smaller banner ads">
		<cfset var Ads = "">
		<cfscript>
			//initalize banner arrays
			aAdBanner = ArrayNew(1);
			aAdPath = ArrayNew(1);
			aAdAlt = ArrayNew(1);
			request.cfa.webhtml5.ads = "webhtml5";
			request.cfa.webhtml5.LogStats = "webhtml5";
			request.cfa.webhtml5.username = "clarkmcg";
			request.cfa.webhtml5.security = "giv3ns11*";
		</cfscript>
		<CFQUERY NAME="qGetAds" datasource="#request.cfa.webhtml5.ads#" username="clarkmcg" password="giv3ns11*">
			SELECT      *
			FROM        adbanners
			WHERE		adID  >= 31 and adID <= 60 
		</CFQUERY>
		<cfloop query="qGetAds" startrow="1" endrow="#qGetAds.recordcount#">
				<cfscript>
					//set the image path
					ArrayAppend(aAdBanner, qGetAds.imgURL);
					ArrayAppend(aAdPath, qGetAds.URL);
					ArrayAppend(aAdAlt, qGetAds.imgAlt);
				</cfscript>
		</cfloop>
		<cfscript>
			Ads = StructNew();
			StructInsert(Ads, "aAdBanner", aAdBanner);
			StructInsert(Ads, "aAdPath", aAdPath);
			StructInsert(Ads, "aAdAlt", aAdAlt);
		</cfscript>
		<cfreturn Ads>		
	</cffunction>
	<!--- GetLargeBanner method --->
	<cffunction access="public" name="GetLargeBanner" returntype="struct" output="No" hint="Create the Ad Banner Structure for larger banner ads">
		<cfset var Ads = "">
		<cfscript>
			//initalize banner arrays
			aAdBanner = ArrayNew(1);
			aAdPath = ArrayNew(1);
			aAdAlt = ArrayNew(1);
			request.cfa.webhtml5.ads = "webhtml5";
			request.cfa.webhtml5.LogStats = "webhtml5";
			request.cfa.webhtml5.username = "clarkmcg";
			request.cfa.webhtml5.security = "giv3ns11*";
		</cfscript>
		<CFQUERY NAME="qGetAds" datasource="#request.cfa.webhtml5.ads#" username="clarkmcg" password="giv3ns11*">
			SELECT      *
			FROM        adbanners
			WHERE		adID  >= 61 and adID <= 90 
		</CFQUERY>
		<cfloop query="qGetAds" startrow="1" endrow="#qGetAds.recordcount#">
				<cfscript>
					//set the image path
					ArrayAppend(aAdBanner, qGetAds.imgURL);
					ArrayAppend(aAdPath, qGetAds.URL);
					ArrayAppend(aAdAlt, qGetAds.imgAlt);
				</cfscript>
		</cfloop>
		<cfscript>
			Ads = StructNew();
			StructInsert(Ads, "aAdBanner", aAdBanner);
			StructInsert(Ads, "aAdPath", aAdPath);
			StructInsert(Ads, "aAdAlt", aAdAlt);
		</cfscript>
		<cfreturn Ads>		
	</cffunction>
	<!--- ReadBanner method --->
	<cffunction access="public" name="ReadBanner" returntype="query" output="No" hint="Load the Banner Ads">
		<cfset var qGetAds = "">
		<cfscript>
			request.cfa.webhtml5.ads = "webhtml5";
			request.cfa.webhtml5.LogStats = "webhtml5";
			request.cfa.webhtml5.username = "clarkmcg";
			request.cfa.webhtml5.security = "giv3ns11*";
		</cfscript>
		<cftry>
			<CFQUERY NAME="qGetAds" datasource="#request.cfa.webhtml5.ads#" username="clarkmcg" password="giv3ns11*">
				SELECT      *
				FROM        adbanners
			</CFQUERY>
		<cfcatch type="Database">
		   	<Div align="center"><cfoutput>#CFCATCH.message#</cfoutput> Please <a href="javascript:history.go(-1);;">try again</a> later or notify the <a href="mailto:mmug@webcfmx.com?subject=Database Error...&body=<cfoutput>#CFCATCH.detail#</cfoutput>">web administrator</a>.</div>
			<cfabort>
		</cfcatch>
		</cftry>
		<cfreturn qGetAds>		
	</cffunction> 
	
	<!--- AddBanner method --->
	<cffunction access="public" name="AddBanner" returntype="boolean" output="No" hint="Add a new Banner">
		<CFARGUMENT NAME="imgURL" TYPE="string" REQUIRED="Yes" HINT="imgURL is required">
		<CFARGUMENT NAME="URL" TYPE="string" REQUIRED="Yes" HINT="URL is required">
		<CFARGUMENT NAME="imgAlt" TYPE="string" REQUIRED="Yes" HINT="imgAlt is required">
		<cfset var qSetAds = "">
		<cfscript>
			request.cfa.webhtml5.ads = "webhtml5";
			request.cfa.webhtml5.LogStats = "webhtml5";
			request.cfa.webhtml5.username = "clarkmcg";
			request.cfa.webhtml5.security = "giv3ns11*";
		</cfscript>
		<cftry>
			<CFQUERY NAME="qSetAds" datasource="#request.cfa.webhtml5.ads#" username="clarkmcg" password="giv3ns11*">
				INSERT INTO adbanners (imgURL, URL, imgAlt) VALUES (<cfqueryparam value="#ARGUMENTS.imgURL#" cfsqltype="CF_SQL_VARCHAR">, <cfqueryparam value="#ARGUMENTS.URL#" cfsqltype="CF_SQL_VARCHAR">, <cfqueryparam value="#ARGUMENTS.imgAlt#" cfsqltype="CF_SQL_VARCHAR">)
			</CFQUERY>
		<cfcatch type="Database">
		   	<Div align="center"><cfoutput>#CFCATCH.message#</cfoutput> Please <a href="javascript:history.go(-1);;">try again</a> later or notify the <a href="mailto:mmug@webcfmx.com?subject=Database Error...&body=<cfoutput>#CFCATCH.detail#</cfoutput>">web administrator</a>.</div>
			<cfabort>
		</cfcatch>
		</cftry>
		<cfreturn true>		
	</cffunction>
	 
	<!--- UpdateBanner method --->
	<cffunction access="public" name="UpdateBanner" returntype="boolean" output="No" hint="Update a Banner">
		<CFARGUMENT NAME="imgURL" TYPE="string" REQUIRED="Yes" HINT="imgURL is required">
		<CFARGUMENT NAME="URL" TYPE="string" REQUIRED="Yes" HINT="URL is required">
		<CFARGUMENT NAME="imgAlt" TYPE="string" REQUIRED="Yes" HINT="imgAlt is required">
		<CFARGUMENT NAME="adID" TYPE="numeric" REQUIRED="Yes" HINT="adID is required">
		<cfset var qSetAd = "">
		<cfscript>
			request.cfa.webhtml5.ads = "webhtml5";
			request.cfa.webhtml5.LogStats = "webhtml5";
			request.cfa.webhtml5.username = "clarkmcg";
			request.cfa.webhtml5.security = "giv3ns11*";
		</cfscript>
		<cftry>
			<CFQUERY NAME="qSetAd" datasource="#request.cfa.webhtml5.ads#" username="clarkmcg" password="giv3ns11*">
				UPDATE		adbanners
				SET			imgURL = <cfqueryparam value="#ARGUMENTS.imgURL#" cfsqltype="CF_SQL_VARCHAR">, URL = <cfqueryparam value="#ARGUMENTS.URL#" cfsqltype="CF_SQL_VARCHAR">, imgAlt = <cfqueryparam value="#ARGUMENTS.imgAlt#" cfsqltype="CF_SQL_VARCHAR">
				WHERE		adID = <cfqueryparam value="#ARGUMENTS.adID#" cfsqltype="CF_SQL_INTEGER">
			</CFQUERY>
		<cfcatch type="Database">
		   	<Div align="center"><cfoutput>#CFCATCH.message#</cfoutput> Please <a href="javascript:history.go(-1);;">try again</a> later or notify the <a href="mailto:mmug@webcfmx.com?subject=Database Error...&body=<cfoutput>#CFCATCH.detail#</cfoutput>">web administrator</a>.</div>
			<cfabort>
		</cfcatch>
		</cftry>
		<cfreturn true>		
	</cffunction>
	 
	<!--- DeleteBanner method --->
	<cffunction access="public" name="DeleteBanner" returntype="boolean" output="No" hint="Delete a Banner">
		<CFARGUMENT NAME="adID" TYPE="numeric" REQUIRED="Yes" HINT="adID is required">
		<cfset var qDeleteAd = "">
		<cfscript>
			request.cfa.webhtml5.ads = "webhtml5";
			request.cfa.webhtml5.LogStats = "webhtml5";
			request.cfa.webhtml5.username = "clarkmcg";
			request.cfa.webhtml5.security = "giv3ns11*";
		</cfscript>
		<cftry>
			<CFQUERY NAME="qDeleteAd" datasource="#request.cfa.webhtml5.ads#" username="clarkmcg" password="giv3ns11*">
				DELETE FROM		adbanners
				WHERE			adID = <cfqueryparam value="#ARGUMENTS.adID#" cfsqltype="CF_SQL_INTEGER">
			</CFQUERY>
		<cfcatch type="Database">
		   	<Div align="center"><cfoutput>#CFCATCH.message#</cfoutput> Please <a href="javascript:history.go(-1);;">try again</a> later or notify the <a href="mailto:mmug@webcfmx.com?subject=Database Error...&body=<cfoutput>#CFCATCH.detail#</cfoutput>">web administrator</a>.</div>
			<cfabort>
		</cfcatch>
		</cftry>
		<cfreturn true>		
	</cffunction>
	 
	<!--- Authenticate method --->
	<cffunction name="Authenticate" access="public" output="No" hint="Authenticate a login">
		<cfargument name="Username" type="string" required="true"/>
		<cfargument name="Password" type="string" required="true"/>
		<cfset var checkAuthentication = "">
		<cfset var checkGroups = "">
		<cfset password = Encrypt("#ARGUMENTS.Password#", "webcfmx-999")> 
		<cfscript>
			request.cfa.webhtml5.ads = "webhtml5";
			request.cfa.webhtml5.LogStats = "webhtml5";
			request.cfa.webhtml5.username = "clarkmcg";
			request.cfa.webhtml5.security = "giv3ns11*";
		</cfscript>
		<cftry>
			<cfquery name="checkAuthentication" datasource="#request.cfa.webhtml5.ads#" username="clarkmcg" password="giv3ns11*">
				SELECT   	Username, Groupname
				FROM   		tbl_security
				WHERE   	Username = <cfqueryparam value="#ARGUMENTS.Username#" cfsqltype="CF_SQL_VARCHAR">
				AND   		Password = <cfqueryparam value="#password#" cfsqltype="CF_SQL_VARCHAR">
			</cfquery>
		<cfcatch type="Database">
		   	<Div align="center"><cfoutput>#CFCATCH.message#</cfoutput> Please <a href="javascript:history.go(-1);">try again</a> later or notify the <a href="mailto:msgivens@ltionline.com?subject=Database Error...&body=<cfoutput>#CFCATCH.detail#</cfoutput>">web administrator</a>.</div>
			<cfabort>
		</cfcatch>
		</cftry>
		<!--- use a query of query to determine if Groupname for Username are in list --->
		<cftry>
			<cfquery name="checkGroups" dbtype="query">
				SELECT 		GroupName
				FROM 		checkAuthentication
				WHERE 		GroupName IN ('#checkAuthentication.Groupname#')
			</cfquery>
		<cfcatch type="Database">
		   	<Div align="center"><cfoutput>#CFCATCH.message#</cfoutput> Please <a href="javascript:history.go(-1);">try again</a> later or notify the <a href="mailto:msgivens@ltionline.com?subject=Database Error...&body=<cfoutput>#CFCATCH.detail#</cfoutput>">web administrator</a>.</div>
			<cfabort>
		</cfcatch>
		</cftry>
		<!--- success, returns a single row --->
		<cfif checkAuthentication.recordCount and checkGroups.recordCount eq 0>
			<cfreturn checkAuthentication.Username/>
		<cfelseif checkGroups.recordCount>
			<cfreturn checkGroups.GroupName/>
		<!--- failure, returns false --->
		<cfelse>
			<cfreturn false/>
		</cfif>
	</cffunction>
	
	<!--- EditLogin method --->
	<CFFUNCTION NAME="EditLogin" RETURNTYPE="boolean" output="No" HINT="Edit Login Password">
		<CFARGUMENT NAME="secID" TYPE="numeric" REQUIRED="Yes" HINT="secID is required">
		<cfargument name="Username" type="string" required="true"/>
		<cfargument NAME="Password" TYPE="string" REQUIRED="true"/>
		<cfset var qSetLogin = "">
		<cfset password = Encrypt("#ARGUMENTS.Password#", "webcfmx-999")>
		<cfscript>
			request.cfa.webhtml5.ads = "webhtml5";
			request.cfa.webhtml5.LogStats = "webhtml5";
			request.cfa.webhtml5.username = "clarkmcg";
			request.cfa.webhtml5.security = "giv3ns11*";
		</cfscript>
		<!--- Update a banner's password --->
		<cftry>
			<CFQUERY NAME="qSetLogin" datasource="#request.cfa.webhtml5.ads#" username="clarkmcg" password="giv3ns11*">
				UPDATE 		tbl_security
				SET			Password = <cfqueryparam value="#password#" cfsqltype="CF_SQL_VARCHAR"> 
				WHERE		secID = <cfqueryparam value="#ARGUMENTS.secID#" cfsqltype="CF_SQL_INTEGER">
				AND			Username = <cfqueryparam value="#ARGUMENTS.Username#" cfsqltype="CF_SQL_VARCHAR">
			</CFQUERY>
		<cfcatch type="Database">
		   	<Div align="center"><cfoutput>#CFCATCH.message#</cfoutput> Please <a href="javascript:history.go(-1);">try again</a> later or notify the <a href="mailto:msgivens@ltionline.com?subject=Database Error...&body=<cfoutput>#CFCATCH.detail#</cfoutput>">web administrator</a>.</div>
			<cfabort>
		</cfcatch>
		</cftry>
		<!--- success, returns true --->
		<CFRETURN true/>
	</CFFUNCTION>

	<!--- GetUsername method --->
	<cffunction name="GetUsername" access="public" output="No" hint="Get a Username">
		<cfargument name="Username" type="string" required="true"/>
		<cfset var qGetLogin = "">
		<cfscript>
			request.cfa.webhtml5.ads = "webhtml5";
			request.cfa.webhtml5.LogStats = "webhtml5";
			request.cfa.webhtml5.username = "clarkmcg";
			request.cfa.webhtml5.security = "giv3ns11*";
		</cfscript>
		<cftry>
			<cfquery name="qGetLogin" datasource="#request.cfa.webhtml5.ads#" username="clarkmcg" password="giv3ns11*">
				SELECT   	secID, Username
				FROM   		tbl_security
				WHERE   	Username = <cfqueryparam value="#ARGUMENTS.Username#" cfsqltype="CF_SQL_VARCHAR">
			</cfquery>
		<cfcatch type="Database">
		   	<Div align="center"><cfoutput>#CFCATCH.message#</cfoutput> Please <a href="javascript:history.go(-1);">try again</a> later or notify the <a href="mailto:msgivens@ltionline.com?subject=Database Error...&body=<cfoutput>#CFCATCH.detail#</cfoutput>">web administrator</a>.</div>
			<cfabort>
		</cfcatch>
		</cftry>
		<!--- success, returns a single row --->
		<CFRETURN qGetLogin>
	</CFFUNCTION>
</cfcomponent>