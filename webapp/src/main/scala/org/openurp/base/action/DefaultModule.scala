package org.openurp.base.action

import org.beangle.commons.inject.bind.AbstractBindModule
import org.openurp.base.action.code.CategoryAction
import org.openurp.base.action.code.CountryAction
import org.openurp.base.action.code.DisciplineCategoryAction
import org.openurp.base.action.code.DivisionAction
import org.openurp.base.action.code.EducationAction
import org.openurp.base.action.code.FamilyRelationshipAction
import org.openurp.base.action.code.GenderAction
import org.openurp.base.action.code.IdTypeAction
import org.openurp.base.action.code.InstitutionAction
import org.openurp.base.action.code.LanguageAction
import org.openurp.base.action.code.MetaAction
import org.openurp.base.action.code.NationAction
import org.openurp.base.action.code.PoliticalStatusAction
import org.openurp.base.action.code.RoomTypeAction
import org.openurp.base.action.code.UserCategoryAction
import org.openurp.platform.web.tag.UrpTagLibrary

class DefaultModule extends AbstractBindModule {

  protected override def binding() {
    bind(classOf[MetaAction], classOf[CategoryAction])
    bind(classOf[GenderAction], classOf[CountryAction], classOf[NationAction],
      classOf[PoliticalStatusAction], classOf[LanguageAction],
      classOf[DivisionAction], classOf[EducationAction], classOf[FamilyRelationshipAction])
    bind(classOf[InstitutionAction], classOf[DisciplineCategoryAction])
    bind(classOf[IdTypeAction], classOf[RoomTypeAction])
    bind("mvc.Taglibrary.urp", classOf[UrpTagLibrary])
    bind(classOf[DepartmentAction], classOf[SchoolAction], classOf[UserAction])
    bind(classOf[UserCategoryAction])
    bind(classOf[CalendarAction], classOf[SemesterAction])
    bind(classOf[HolidayAction], classOf[TimeSettingAction], classOf[CourseUnitAction])
    bind(classOf[CampusAction], classOf[RoomAction], classOf[BuildingAction])
  }
}