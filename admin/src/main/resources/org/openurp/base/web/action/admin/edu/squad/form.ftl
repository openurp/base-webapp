[#ftl]
[@b.head/]
[@b.toolbar title="行政班级信息"]bar.addBack();[/@]
[@b.tabs]
  [@b.form action=sa theme="list" action=b.rest.save(squad)]
    [@b.textfield name="squad.grade" label="年级" value="${squad.grade!}" required="true" /]
    [@b.textfield name="squad.code" label="代码" value="${squad.code!}" required="true" maxlength="20"/]
    [@b.textfield name="squad.name" label="名称" value="${squad.name!}" required="true" maxlength="20"/]
    [@b.textfield name="squad.shortName" label="简称" value="${squad.shortName!}" maxlength="100"/]
    [@b.textfield name="squad.enName" label="英文名" value="${squad.enName!}" maxlength="100"/]
    [@b.select name="squad.campus.id" label="校区" value="${(squad.campus.id)!}" required="true"  style="width:100px;" items=campuses option="id,name" empty="..."/]
    [@b.select name="squad.department.id" label="院系" value="${(squad.department.id)!}" required="true"
               style="width:200px;" items=departments option="id,name" empty="..."/]
    [@b.select name="squad.level.id" label="培养层次" value="${(squad.level.id)!}" style="width:200px;" required="true"  items=levels option="id,name" empty="..."/]
    [@b.select name="squad.major.id" label="专业" value=squad.major! required="true"
               style="width:300px;" items=majors option=r"${item.code} ${item.name}" empty="..."/]
    [@b.select name="squad.direction.id" label="方向" value=squad.direction!
               style="width:300px;" items=directions option=r"${item.code} ${item.name}" empty="..."/]
    [@b.select name="squad.stdType.id" label="学生类别" value=squad.stdType! required="true"
               style="width:200px;" items=stdTypes option="id,name" empty="..."/]
    [@b.select name="squad.instructor.id" label="辅导员" value="${(squad.instructor.id)!}"
               style="width:300px;" href=urp.api+"/base/stu/instructors.json?q={term}" option="id,user.code+' '+data.user.name+' '+data.user.department.name" empty="..."/]
    [@b.select name="squad.tutor.id" label="班导师" value="${(squad.tutor.id)!}"
               style="width:300px;" href=urp.api+"/base/edu/"+project.id+"/teachers.json?q={term}" option="id,user.code+' '+data.user.name+' '+data.user.department.name" empty="..."/]
    [@b.textfield name="squad.remark" label="备注" value="${squad.remark!}" maxlength="30"/]
    [@b.textfield name="squad.planCount" label="计划人数" value="${squad.planCount!}" /]
    [@b.textfield name="squad.stdCount" label="学籍有效人数" value="${squad.stdCount!}"/]
    [@b.startend label="有效期"
      name="squad.beginOn,squad.endOn" required="true,true"
      start=squad.beginOn end=squad.endOn format="date"/]
    [@b.formfoot]
      [@b.reset/]&nbsp;&nbsp;[@b.submit value="action.submit"/]
    [/@]
  [/@]
[/@]
[@b.foot/]
