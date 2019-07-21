<cfcomponent>
    <cffunction name="getTestString" access="remote" returntype="string">
        <cfreturn "Test from ColdFusion">
    </cffunction>
	<cffunction name="GetBannerFlex" access="remote" returntype="struct" output="No" hint="Create the Ad Banner Structure">
		<cfscript>
			var Ads = "";
			objAds = createObject("component","flextraining.adbanner.components.banner");
			Ads = objAds.GetBanner();
		</cfscript>
		<cfreturn Ads>		
	</cffunction>
</cfcomponent>