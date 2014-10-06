[#ftl]
[@b.head/]
[@b.grid items=educations var="education"]
  [@b.gridbar]
    bar.addItem("${b.text("action.new")}",action.add());
    bar.addItem("${b.text("action.modify")}",action.edit());
    bar.addItem("${b.text("action.delete")}",action.remove("确认删除?"));
  [/@]
  [@b.row]
    [@b.boxcol /]
    [@b.col width="15%" property="code" title="代码"][@b.a href="!info?id=${education.id}"]${education.code}[/@][/@]
    [@b.col width="20%" property="name" title="学历名称"]${education.name}[/@]
    [@b.col width="20%" property="enName" title="英文名称"]${education.enName!}[/@]
    [@b.col width="20%" property="beginOn" title="起始时间"]${education.beginOn!}[/@]
    [@b.col width="20%" property="endOn" title="结束时间"]${education.endOn!}[/@]
  [/@]
[/@]
[@b.foot/]
