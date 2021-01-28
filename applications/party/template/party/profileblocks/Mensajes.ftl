    <div>
      <#if postalAddress.toName?has_content><b>${uiLabelMap.PartyAddrToName}:</b> ${postalAddress.toName}<br /></#if>          
      
       <#if addr1?has_content && (addr1.indexOf(" ") > 0)>
      <#assign addressNum = addr1.substring(0, addr1.indexOf(" "))>
      <#assign addressOther = addr1.substring(addr1.indexOf(" ")+1)>
      <a target="_blank" href="${uiLabelMap.CommonLookupWhitepagesAddressLink}" class="buttontext">${uiLabelMap.CommonLookupWhitepages}</a>
    </#if>
