[#ftl]
[@b.head/]
[@b.grid items=roomTypes var="roomType"]
  [@b.gridbar]
    bar.addItem("${b.text("action.new")}",action.add());
    bar.addItem("${b.text("action.modify")}",action.edit());
    bar.addItem("${b.text("action.delete")}",action.remove("确认删除?"));
  [/@]
  [@b.row]
    [@b.boxcol /]
    [@b.col width="15%" property="code" title="代码"][@b.a href="!info?id=${roomType.id}"]${roomType.code}[/@][/@]
    [@b.col width="20%" property="name" title="房间类型"]${roomType.name}[/@]
    [@b.col width="20%" property="enName" title="英文名称"]${roomType.enName!}[/@]
    [@b.col width="20%" property="beginOn" title="起始时间"]${roomType.beginOn!}[/@]
    [@b.col width="20%" property="endOn" title="结束时间"]${roomType.endOn!}[/@]
  [/@]
[/@]
[@b.foot/]
