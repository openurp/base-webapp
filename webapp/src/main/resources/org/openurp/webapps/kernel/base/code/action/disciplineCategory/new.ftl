[#ftl]
[@b.head/]
[@b.toolbar title="新建学科门类类型"]bar.addBack();[/@]
[@b.tabs]
  [@b.form action="!save" theme="list"]
    [@b.textfield name="disciplineCategory.code" label="代码" value="${disciplineCategory.code!}" required="true" maxlength="20"/]
    [@b.textfield name="disciplineCategory.name" label="学科门类名称" value="${disciplineCategory.name!}" required="true" maxlength="20"/]
    [@b.textfield name="disciplineCategory.enName" label="英文名称" value="${disciplineCategory.enName!}" maxlength="100"/]
    [@b.startend label="开始结束时间" 
      name="disciplineCategory.beginOn,disciplineCategory.endOn" required="false,false" 
      start=disciplineCategory.beginOn end=disciplineCategory.endOn format="date"/]
    [@b.textfield name="disciplineCategory.remark" label="备注" value="${disciplineCategory.remark!}" maxlength="30"/]
    [@b.formfoot]
      [@b.reset/]&nbsp;&nbsp;[@b.submit value="action.submit"/]
    [/@]
  [/@]
[/@]
[@b.foot/]