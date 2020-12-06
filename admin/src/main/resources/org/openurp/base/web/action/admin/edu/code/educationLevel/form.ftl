[#ftl]
[@b.head/]
[@b.toolbar title="修改培养层次"]bar.addBack();[/@]
[@b.tabs]
  [#assign sa][#if educationLevel.persisted]!update?id=${educationLevel.id!}[#else]!save[/#if][/#assign]
  [@b.form action=sa theme="list"]
    [@b.textfield name="educationLevel.code" label="代码" value="${educationLevel.code!}" required="true" maxlength="20"/]
    [@b.textfield name="educationLevel.name" label="名称" value="${educationLevel.name!}" required="true" maxlength="20"/]
    [@b.textfield name="educationLevel.enName" label="英文名" value="${educationLevel.enName!}" maxlength="100"/]
    [@b.select name="educationLevel.fromLevel.id" label="起始" value=educationLevel.fromLevel! items=levels empty="..." required="true"/]
    [@b.select name="educationLevel.toLevel.id" label="到" value=educationLevel.toLevel! items=levels empty="..." required="true"/]
    [@b.startend label="有效期"
      name="educationLevel.beginOn,educationLevel.endOn" required="true,false"
      start=educationLevel.beginOn end=educationLevel.endOn format="date"/]
    [@b.textfield name="educationLevel.remark" label="备注" value="${educationLevel.remark!}" maxlength="3"/]
    [@b.formfoot]
      [@b.reset/]&nbsp;&nbsp;[@b.submit value="action.submit"/]
    [/@]
  [/@]
[/@]
[@b.foot/]