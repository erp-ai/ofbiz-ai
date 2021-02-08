 <div id="partyContactInfo" class="screenlet">
    <div class="screenlet-title-bar">
      <ul>
        <li class="h3">Metodo de contacto</li>
        <#if security.hasEntityPermission("PARTYMGR", "_CREATE", session) || userLogin.partyId == partyId>
          <li><a href="<@ofbizUrl>editcontactmech?partyId=${partyId}</@ofbizUrl>">${uiLabelMap.CommonCreateNew}</a></li>
        </#if>
      </ul>
      <br class="clear" />
    </div>
    <div class="screenlet-body">
      <#if contactMeches?has_content>
        <table class="basic-table" cellspacing="0">
        
          <#list contactMeches as contactMechMap>
            <#assign contactMech = contactMechMap.contactMech>
            <#assign partyContactMech = contactMechMap.partyContactMech>
            <tr><td colspan="4"><hr /></td></tr>
            <tr>
              <td class="label align-top">Metodo</td>
              <td>
                <#list contactMechMap.partyContactMechPurposes as partyContactMechPurpose>
                  <#assign contactMechPurposeType = partyContactMechPurpose.getRelatedOne("ContactMechPurposeType", true)>
                  <div>
                    ${partyId}
                    <b>${contactMechPurposeType.get("description",locale)}</b>
                    <#assign contactMechType = partyContactMechPurpose.getRelatedOne("ContactMechPurposeType", true)>
                    <b>${contactMechPurposeType.get("description",locale)}</b>
                  <#if contactMechMap.postalAddress?has_content>
                    <#assign postalAddress = contactMechMap.postalAddress>
                    ${setContextField("postalAddress", postalAddress)}
                    ${postalAddress.toName}
                  </#if>
                  <#if contactMechMap.postalAddress?has_content>
                    <#assign postalAddress = contactMechMap.postalAddress>
                    ${setContextField("postalAddress", postalAddress)}
                    ${postalAddress.toName}
                  </#if>
                  </div>
                </#list>
                <div>(${uiLabelMap.CommonUpdated}:&nbsp;${partyContactMech.fromDate})</div>
                <#if partyContactMech.thruDate?has_content><div><b>${uiLabelMap.PartyContactEffectiveThru}:&nbsp;${partyContactMech.thruDate}</b></div></#if>
                <#-- create cust request -->
                ${partyId}
                <#if custRequestTypes??>
                  <form name="createCustRequestForm" action="<@ofbizUrl>createCustRequest</@ofbizUrl>" method="post" onsubmit="javascript:submitFormDisableSubmits(this)">
                    <input type="hidden" name="partyId" value="${partyId}"/>
                    <input type="hidden" name="fromPartyId" value="${partyId}"/>
                    <input type="hidden" name="fulfillContactMechId" value="${contactMech.contactMechId}"/>
                    <select name="custRequestTypeId">
                      <#list custRequestTypes as type>
                        <option value="${type.custRequestTypeId}">${type.get("description", locale)}</option>
                      </#list>
                    </select>
                    <input type="submit" class="smallSubmit" value="${uiLabelMap.PartyCreateNewCustRequest}"/>
                  </form>
                </#if>
              </td>
              <td valign="top"><b>(${partyContactMech.allowSolicitation!})</b></td>
              <td class="button-col">
                <#if security.hasEntityPermission("PARTYMGR", "_UPDATE", session) || userLogin.partyId == partyId>
                  <a href="<@ofbizUrl>editcontactmech?partyId=${partyId}&amp;contactMechId=${contactMech.contactMechId}</@ofbizUrl>">${uiLabelMap.CommonUpdate}</a>
                </#if>
                <#if security.hasEntityPermission("PARTYMGR", "_DELETE", session) || userLogin.partyId == partyId>
                  <form name="partyDeleteContact" method="post" action="<@ofbizUrl>deleteContactMech</@ofbizUrl>" onsubmit="javascript:submitFormDisableSubmits(this)">
                    <input name="partyId" value="${partyId}" type="hidden"/>
                    <input name="contactMechId" value="${contactMech.contactMechId}" type="hidden"/>
                    <input type="submit" class="smallSubmit" value="${uiLabelMap.CommonExpire}"/>
                  </form>
                </#if>
              </td>
            </tr>
          </#list>
        </table>
      <#else>
        ${uiLabelMap.PartyNoContactInformation}
      </#if>
    </div>
  </div>