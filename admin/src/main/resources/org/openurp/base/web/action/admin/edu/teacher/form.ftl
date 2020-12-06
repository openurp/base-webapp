[#ftl]
[@b.head/]
[@b.toolbar title="修改教师信息"]bar.addBack();[/@]
[@b.tabs]
  [@b.form action=b.rest.save(teacher) theme="list"]
    [@b.textfield name="user.code" label="职工号" value=(teacher.user.code) required="true" style="width:100px;" maxlength="20"/]
    [@b.textfield name="user.name" label="姓名" value=(teacher.user.name) required="true" style="width:100px;" maxlength="20"/]

    [@b.select name="user.gender.id" label="性别" value=(teacher.user.gender)! required="true" style="width:100px;" items=genders option="id,name" empty="..."/]
    [@b.select name="person.idType.id" label="证件类型" value=(teacher.person.idType)! style="width:100px;" items=idTypes option="id,name" empty="..."/]
    [@b.textfield name="person.code" label="证件号码" value=(teacher.person.code)! maxlength="30" style="width:200px;" /]
    [@b.datepicker name="person.birthday" label="出生日期" value=(teacher.person.birthday)! comment="填写出生日期时，需要同时填写证件号，无法获取时可填工号"/]

    [@b.select name="user.department.id" label="院系" value=(teacher.user.department.id)! required="true" style="width:200px;" items=departments option="id,name" empty="..."/]
    [@b.select name="teacher.teacherType.id" label="教师类型" required="true" style="width:200px;" value=(teacher.teacherType!) items=teacherTypes empty="..."/]
    [@b.select name="teacher.title.id" label="职称" required="false" value=teacher.title! items=professionalTitles empty="..."/]
    [@b.select name="teacher.degree.id" label="学位" required="false" value=teacher.degree! items=degrees empty="..."/]
    [@b.select name="teacher.educationDegree.id" label="学历" required="false" value=teacher.educationDegree! items=educationDegrees empty="..."/]
    [@b.select name="teacher.status.id" label="状态" required="true" value=teacher.status! items=statuses empty="..."/]
    [@b.startend label="任教时间" name="teacher.beginOn,teacher.endOn" required="true,false" start=teacher.beginOn end=teacher.endOn format="date"/]
    [@b.radios label="是否兼职"  name="teacher.parttime" value=teacher.parttime items="1:common.yes,0:common.no" required="true"/]
    [@b.radios label="是否返聘"  name="teacher.retired" value=teacher.retired items="1:common.yes,0:common.no" required="true"/]
    [@b.radios label="是否在编"  name="teacher.formalHr" value=teacher.formalHr items="1:common.yes,0:common.no" required="true"/]
    [@b.textfield name="teacher.remark" label="备注" value="${teacher.remark!}" maxlength="30"/]
    [@b.formfoot]
      <input type="hidden" name="user.id" value="${teacher.user.id}"/>
      [#if teacher.person??]
      <input type="hidden" name="person.id" value="${teacher.person.id}"/>
      [/#if]
      [@b.reset/]&nbsp;&nbsp;[@b.submit value="action.submit"/]
    [/@]
  [/@]
[/@]
[@b.foot/]