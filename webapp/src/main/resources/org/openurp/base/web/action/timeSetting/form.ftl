[#ftl]
[@b.head/]
[@b.toolbar title="修改时间设置类型"]bar.addBack();[/@]
[@b.tabs]
  [#assign sa][#if timeSetting.persisted]!update?id=${timeSetting.id!}[#else]!save[/#if][/#assign]
  [@b.form action=sa theme="list"]
    [@b.textfield name="timeSetting.name" label="名称" value="${timeSetting.name!}" required="true" maxlength="20" /]
    [@b.formfoot]
      [@b.reset/]&nbsp;&nbsp;[@b.submit value="action.submit"/]
    [/@]
  [/@]
[/@]
[@b.foot/]