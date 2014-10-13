[#ftl]
[@b.head/]
[@b.toolbar title="新建行政区划类型"]bar.addBack();[/@]
[@b.tabs]
  [@b.form action="!save" theme="list"]
    [@b.textfield name="division.code" label="代码" value="${division.code!}" required="true" maxlength="20"/]
    [@b.textfield name="division.name" label="名称" value="${division.name!}" required="true" maxlength="20"/]
    [@b.textfield name="division.enName" label="英文名称" value="${division.enName!}" maxlength="100"/]
    [@b.startend label="生效失效时间" 
      name="division.beginOn,division.endOn" required="false,false" 
      start=division.beginOn end=division.endOn format="date"/]
    [@b.textfield name="division.remark" label="备注" value="${division.remark!}" maxlength="30"/]
    [@b.formfoot]
      [@b.reset/]&nbsp;&nbsp;[@b.submit value="action.submit"/]
    [/@]
  [/@]
[/@]
[@b.foot/]