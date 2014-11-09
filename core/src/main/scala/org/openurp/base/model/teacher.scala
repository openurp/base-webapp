package org.openurp.base.model

import org.beangle.data.model.bean.TemporalOnBean
import org.beangle.data.model.bean.CodedBean
import org.beangle.data.model.bean.LongIdBean
import org.openurp.base.code.Education
import org.beangle.data.model.bean.NamedBean
import java.sql.Date
import org.openurp.base.Department
import org.openurp.base.TeacherJournal
import org.openurp.base.code.TeacherUnitType
import org.openurp.base.code.TeacherTitleLevel
import org.openurp.base.code.TeacherType
import org.openurp.base.Teacher
import org.openurp.base.Person
import org.openurp.base.code.Degree
import org.openurp.base.code.TeacherTitle
import org.openurp.base.code.TeacherState
import org.openurp.base.code.TutorType

/**
 * 教师信息默认实现
 */
class TeacherBean extends LongIdBean with CodedBean with NamedBean with TemporalOnBean with Teacher {
  /**人员信息*/
  var person: Person = _
  /** 部门 */
  var department: Department = _
  /** 兼职部门 */
  var parttimeDepart: Department = _
  /** 职称 */
  var title: TeacherTitle = _
  /** 教职工类别 */
  var teacherType: TeacherType = _
  /**职称等级*/
  var titleLevel: TeacherTitleLevel = _
  /** 学历层次 */
  var education: Education = _
  /** 毕业日期 */
  var graduateOn: Date = _
  /** 学位 */
  var degree: Degree = _
  /** 导师类别 */
  var tutorType: TutorType = _
  /** 研导任职年月 */
  var tutorAwardOn: Date = _
  /** 教师在职状态 */
  var state: TeacherState = _
  /** 学位授予年月 */
  var degreeAwardOn: Date = _
  /** 毕业学校 */
  var school: String = _
  /** 备注 */
  var remark: String = _
  /** 状态变化日志 */
  var journals: collection.mutable.Seq[TeacherJournal] = _
  /** 是否任课 */
  var teaching: Boolean = _
  /** 从何单位聘任 */
  var unit: String = _
  /** 聘任单位的类别 */
  var unitType: TeacherUnitType = _
}

/**
 * 教师日志信息
 *
 * @author chaostone
 */
class TeacherJournalBean extends LongIdBean with TeacherJournal {
  /**教师*/
  var teacher: Teacher = _
  /** 部门 */
  var department: Department = _
  /** 职称 */
  var title: TeacherTitle = _
  /** 学位 */
  var degree: Degree = _
  /** 导师类别 */
  var tutorType: TutorType = _
  /** 起始日期 */
  var beginOn: Date = _
  /** 结束日期 */
  var endOn: Date = _
  /** 备注 */
  var remark: String = _
}