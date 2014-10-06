[#ftl]
[@b.head/]
[@b.toolbar title="人员关系信息"]
  bar.addBack("${b.text("action.back")}");
[/@]
<table class="infoTable">
  <tr>
    <td class="title" width="20%">人员关系名称</td>
    <td class="content" >${familyRelation.name}</td>
  </tr>
  <tr>
    <td class="title" width="20%">代码</td>
    <td class="content">${familyRelation.code}</td>
  </tr>
  <tr>
    <td class="title" width="20%">英文名称</td>
    <td class="content" >${familyRelation.enName!}</td>
  </tr>
  <tr>
    <td class="title" width="20%">起始时间</td>
    <td class="content" >${familyRelation.beginOn!}</td>
  </tr>
  <tr>
    <td class="title" width="20%">终止时间</td>
    <td class="content" >${familyRelation.endOn!}</td>
  </tr>
  <tr>
    <td class="title" width="20%">备注</td>
    <td class="content">${familyRelation.remark!}</td>
  </tr>
  <tr>
</table>

[@b.foot/]