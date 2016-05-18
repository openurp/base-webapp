[#ftl]
[@b.head/]
[@b.toolbar title="修改证件类型"]bar.addBack();[/@]
[@b.tabs]
  [#assign sa][#if idType.persisted]!update?id=${idType.id!}[#else]!save[/#if][/#assign]
  [@b.form action=sa theme="list"]
    [@b.textfield name="idType.code" label="代码" value="${idType.code!}" required="true" maxlength="20"/]
    [@b.textfield name="idType.name" label="名称" value="${idType.name!}" required="true" maxlength="20"/]
    [@b.textfield name="idType.enName" label="英文名称" value="${idType.enName!}" maxlength="100"/]
    [@b.startend label="生效失效时间" 
      name="idType.beginOn,idType.endOn" required="false,false" 
      start=idType.beginOn end=idType.endOn format="date"/]
    [@b.textfield name="idType.remark" label="备注" value="${idType.remark!}" maxlength="3"/]
    [@b.formfoot]
      [@b.reset/]&nbsp;&nbsp;[@b.submit value="action.submit"/]
    [/@]
  [/@]
[/@]
[@b.foot/]