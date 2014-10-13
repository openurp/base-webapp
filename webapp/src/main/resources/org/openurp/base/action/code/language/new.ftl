[#ftl]
[@b.head/]
[@b.toolbar title="新建语种类型"]bar.addBack();[/@]
[@b.tabs]
  [@b.form action="!save" theme="list"]
    [@b.textfield name="language.code" label="代码" value="${language.code!}" required="true" maxlength="20"/]
    [@b.textfield name="language.name" label="名称" value="${language.name!}" required="true" maxlength="20"/]
    [@b.textfield name="language.enName" label="英文名称" value="${language.enName!}" maxlength="100"/]
    [@b.startend label="生效失效时间" 
      name="language.beginOn,language.endOn" required="false,false" 
      start=language.beginOn end=language.endOn format="date"/]
    [@b.textfield name="language.remark" label="备注" value="${language.remark!}" maxlength="30"/]
    [@b.formfoot]
      [@b.reset/]&nbsp;&nbsp;[@b.submit value="action.submit"/]
    [/@]
  [/@]
[/@]
[@b.foot/]