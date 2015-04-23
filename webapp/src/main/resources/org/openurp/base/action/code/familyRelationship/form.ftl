[#ftl]
[@b.head/]
[@b.toolbar title="修改人员关系类型"]bar.addBack();[/@]
[@b.tabs]
  [@b.form action="!update?id=${familyRelationship.id}" theme="list"]
    [@b.textfield name="familyRelationship.code" label="代码" value="${familyRelationship.code!}" required="true" maxlength="20"/]
    [@b.textfield name="familyRelationship.name" label="名称" value="${familyRelationship.name!}" required="true" maxlength="20"/]
    [@b.textfield name="familyRelationship.enName" label="英文名称" value="${familyRelationship.enName!}" maxlength="100"/]
    [@b.startend label="生效失效时间" 
      name="familyRelationship.beginOn,familyRelationship.endOn" required="false,false" 
      start=familyRelationship.beginOn end=familyRelationship.endOn format="date"/]
    [@b.textfield name="familyRelationship.remark" label="备注" value="${familyRelationship.remark!}" maxlength="3"/]
    [@b.formfoot]
      [@b.reset/]&nbsp;&nbsp;[@b.submit value="action.submit"/]
    [/@]
  [/@]
[/@]
[@b.foot/]