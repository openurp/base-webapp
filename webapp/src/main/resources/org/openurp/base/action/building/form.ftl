[#ftl]
[@b.head/]
[@b.toolbar title="修改建筑类型"]bar.addBack();[/@]
[@b.tabs]
  [@b.form action="!update?id=${building.id}" theme="list"]
    [@b.textfield name="building.code" label="代码" value="${building.code!}" required="true" maxlength="10"/]
    [@b.textfield name="building.name" label="名称" value="${building.name!}" required="true" maxlength="80"/]
    [@b.textfield name="building.enName" label="英文名称" value="${building.enName!}" maxlength="100"/]
    [@b.textfield name="building.shortName" label="简称" value="${building.shortName!}" maxlength="100"/]
    [@b.select name="building.campus.id" label="所属校区" value="${(building.campus.id)!}" 
               style="width:200px;" href=urp.service("/base/campuses") empty="..." required="true"/]
    [@b.startend label="生效失效时间" 
      name="building.beginOn,building.endOn" required="false,false" 
      start=building.beginOn end=building.endOn format="date"/]
    [@b.formfoot]
      [@b.reset/]&nbsp;&nbsp;[@b.submit value="action.submit"/]
    [/@]
  [/@]
[/@]
[@b.foot/]