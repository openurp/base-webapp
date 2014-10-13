[#ftl]
[@b.head/]
[@b.toolbar title="修改人员关系类型"]bar.addBack();[/@]
[@b.tabs]
  [@b.form action="!update?id=${familyRelation.id}" theme="list"]
    [@b.textfield name="familyRelation.code" label="代码" value="${familyRelation.code!}" required="true" maxlength="20"/]
    [@b.textfield name="familyRelation.name" label="名称" value="${familyRelation.name!}" required="true" maxlength="20"/]
    [@b.textfield name="familyRelation.enName" label="英文名称" value="${familyRelation.enName!}" maxlength="100"/]
    [@b.startend label="生效失效时间" 
      name="familyRelation.beginOn,familyRelation.endOn" required="false,false" 
      start=familyRelation.beginOn end=familyRelation.endOn format="date"/]
    [@b.textfield name="familyRelation.remark" label="备注" value="${familyRelation.remark!}" maxlength="3"/]
    [@b.formfoot]
      [@b.reset/]&nbsp;&nbsp;[@b.submit value="action.submit"/]
    [/@]
  [/@]
[/@]
[@b.foot/]