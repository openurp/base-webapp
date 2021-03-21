[#ftl]
[@b.head/]
[@b.grid items=teachers var="teacher"]
  [@b.gridbar]
    bar.addItem("${b.text("action.new")}",action.add());
    bar.addItem("${b.text("action.modify")}",action.edit());
    bar.addItem("${b.text("action.delete")}",action.remove("确认删除?"));
  [/@]
  [@b.row]
    [@b.boxcol /]
    [@b.col width="10%" property="user.code" title="工号"]${teacher.user.code}[/@]
    [@b.col width="13%" property="user.name" title="姓名"]
      [@b.a href="!info?id=${teacher.id}"]
        <span title="${teacher.beginOn!}~${teacher.endOn!}">${teacher.user.name}</span>
      [/@]
    [/@]
    [@b.col width="8%" property="user.gender.name" title="性别"/]
    [@b.col width="20%" property="department.id" title="院系"]${(teacher.department.name)!}[/@]
    [@b.col width="17%" property="teacherType.name" title="类型"/]
    [@b.col width="10%" property="title.name" title="职称"/]
    [@b.col width="18%" property="degree.name" title="学位"/]
  [/@]
[/@]
[@b.foot/]
