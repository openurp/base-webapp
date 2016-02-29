package org.openurp.base.web

import org.beangle.commons.inject.bind.AbstractBindModule
import org.openurp.base.web.action.BuildingAction
import org.openurp.base.web.action.CampusAction
import org.openurp.base.web.action.DepartmentAction
import org.openurp.base.web.action.RoomAction
import org.openurp.base.web.action.SchoolAction
import org.openurp.base.web.action.UserAction
import org.openurp.base.web.action.code.CountryAction
import org.openurp.base.web.action.code.DisciplineCategoryAction
import org.openurp.base.web.action.code.DivisionAction
import org.openurp.base.web.action.code.FamilyRelationshipAction
import org.openurp.base.web.action.code.GenderAction
import org.openurp.base.web.action.code.IdTypeAction
import org.openurp.base.web.action.code.InstitutionAction
import org.openurp.base.web.action.code.LanguageAction
import org.openurp.base.web.action.code.NationAction
import org.openurp.base.web.action.code.PoliticalStatusAction
import org.openurp.base.web.action.code.UserCategoryAction

class DefaultModule extends AbstractBindModule {

  protected override def binding() {
    bind(classOf[GenderAction], classOf[CountryAction], classOf[NationAction],
      classOf[PoliticalStatusAction], classOf[LanguageAction],
      classOf[DivisionAction],  classOf[FamilyRelationshipAction])
    bind(classOf[InstitutionAction], classOf[DisciplineCategoryAction])
    bind(classOf[IdTypeAction] )
    bind(classOf[DepartmentAction], classOf[SchoolAction], classOf[UserAction])
    bind(classOf[UserCategoryAction])
    bind(classOf[CampusAction], classOf[RoomAction], classOf[BuildingAction])
  }
}