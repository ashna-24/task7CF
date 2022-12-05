<cfcomponent>
    <cffunction name="getStruct" access="remote">
        <cfif structKeyExists(form,'submit')>
            <cfscript>
                myStruct=StructNew();
                struct= structNew();
                mystruct[form.text1]=form.text2;
                /* struct[form.text1]=form.text2; */
                structInsert( myStruct, form.text1, form.text2, true);
                WriteDump(myStruct);
            </cfscript>
        </cfif>
    </cffunction>
</cfcomponent>