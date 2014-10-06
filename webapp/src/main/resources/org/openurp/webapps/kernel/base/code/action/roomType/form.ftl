[#ftl]
[@b.head/]
[@b.toolbar title="修改房间类型"]bar.addBack();[/@]
[@b.tabs]
  [@b.form action="!update?id=${roomType.id}" theme="list"]
    [@b.textfield name="roomType.code" label="代码" value="${roomType.code!}" required="true" maxlength="20"/]
    [@b.textfield name="roomType.name" label="房间类型" value="${roomType.name!}" required="true" maxlength="20"/]
    [@b.textfield name="roomType.enName" label="英文名称" value="${roomType.enName!}" maxlength="100"/]
    [@b.startend label="开始结束时间" 
      name="roomType.beginOn,roomType.endOn" required="false,false" 
      start=roomType.beginOn end=roomType.endOn format="date"/]
    [@b.textfield name="roomType.remark" label="备注" value="${roomType.remark!}" maxlength="3"/]
    [@b.formfoot]
      [@b.reset/]&nbsp;&nbsp;[@b.submit value="action.submit"/]
    [/@]
  [/@]
[/@]
[@b.foot/]