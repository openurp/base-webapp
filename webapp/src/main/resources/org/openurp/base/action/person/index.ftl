[#ftl]
[@b.head/]
[@b.toolbar title="通用人员信息"/]
<table class="indexpanel">
  <tr>
    <td class="index_view" >
    [@b.form name="personSearchForm" action="!search" target="personlist" title="ui.searchForm" theme="search"]
      [@b.textfields names="person.name;姓名"/]
      [@b.textfields names="person.code;学工号"/]
      <input type="hidden" name="orderBy" value="person.name"/>
    [/@]
    </td>
    <td class="index_content">[@b.div id="personlist" href="!search?orderBy=person.code"/]
    </td>
  </tr>
</table>
[@b.foot/]