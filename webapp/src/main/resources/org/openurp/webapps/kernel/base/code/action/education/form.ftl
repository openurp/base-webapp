[#ftl]
[@b.head/]
[@b.toolbar title="修改学历类型"]bar.addBack();[/@]
[@b.tabs]
  [@b.form action="!update?id=${education.id}" theme="list"]
    [@b.textfield name="education.code" label="代码" value="${education.code!}" required="true" maxlength="20"/]
    [@b.textfield name="education.name" label="学历名称" value="${education.name!}" required="true" maxlength="20"/]
    [@b.textfield name="education.enName" label="英文名称" value="${education.enName!}" maxlength="100"/]
    [@b.startend label="开始结束时间" 
      name="education.beginOn,education.endOn" required="false,false" 
      start=education.beginOn end=education.endOn format="date"/]
    [@b.textfield name="education.remark" label="备注" value="${education.remark!}" maxlength="3"/]
    [@b.formfoot]
      [@b.reset/]&nbsp;&nbsp;[@b.submit value="action.submit"/]
    [/@]
  [/@]
[/@]
[@b.foot/]