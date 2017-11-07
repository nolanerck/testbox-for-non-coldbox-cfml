<cfinclude template="./model/incDrummers.cfm" />

<cfset saveDrummer( form.drummerID, form.name, form.yearsExperience ) />

<cflocation url="listDrummers.cfm" addtoken="false" />