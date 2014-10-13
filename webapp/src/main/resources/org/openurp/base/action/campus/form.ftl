[#ftl]
[@b.head/]
[@b.toolbar title="修改校区类型"]bar.addBack();[/@]
[@b.tabs]
  [@b.form action="!update?id=${campus.id}" theme="list"]
    [@b.textfield name="campus.code" label="代码" value="${campus.code!}" required="true" maxlength="10"/]
    [@b.textfield name="campus.name" label="名称" value="${campus.name!}" required="true" maxlength="80"/]
    [@b.textfield name="campus.enName" label="英文名称" value="${campus.enName!}" maxlength="100"/]
    [@b.textfield name="campus.shortName" label="简称" value="${campus.shortName!}" maxlength="100"/]
    [@b.startend label="生效失效时间" 
      name="campus.beginOn,campus.endOn" required="false,false" 
      start=campus.beginOn end=campus.endOn format="date"/]
    [@b.formfoot]
      [@b.reset/]&nbsp;&nbsp;[@b.submit value="action.submit"/]
    [/@]
  [/@]
[/@]
[@b.foot/]