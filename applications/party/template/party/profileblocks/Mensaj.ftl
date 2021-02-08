<#--
Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.
-->

  <div id="partyAttributes" class="screenlet">
    <div class="screenlet-title-bar">
      <ul>
        <li class="h3">Como nos conocio?</li>
      </ul>
      <br class="clear"/>
    </div>
    <div class="screenlet-body">
      <#if attri?has_content>
        <table class="basic-table hover-bar" cellspacing="0">
            <tr class="header-row">
            </tr>
          <#assign alt_row = false>
          <#list attri as attr>
            <tr valign="middle"<#if alt_row> class="alternate-row"</#if>>
              <td>
                ${attr.mensaje}
              </td>
            </tr>
            <#-- toggle the row color -->
            <#assign alt_row = !alt_row>
          </#list>
        </table>
      <#else>
        ${uiLabelMap.PartyNoPartyAttributesFound}
      </#if>
    </div>
  </div>