/*
 * OpenURP, Agile University Resource Planning Solution.
 *
 * Copyright © 2014, The OpenURP Software.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful.
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
package org.openurp.base.web.action.admin.edu.code

import org.beangle.data.dao.OqlBuilder
import org.beangle.webmvc.entity.action.RestfulAction
import org.openurp.base.edu.code.model.{BookType, CourseAssessCategory, _}
import org.openurp.code.edu.model.{CourseNature, TeachingMethod, TeachingNature, TeachingNatureCategory}
import org.openurp.code.std.model.{StdAlterReason, StdAlterType}

class StdLabelAction extends RestfulAction[StdLabel] {
  override def editSetting(entity: StdLabel) = {
    val query = OqlBuilder.from(classOf[StdLabelType])
    query.orderBy("name")
    val labelTypes = entityDao.search(query)
    put("labelTypes", labelTypes)
    super.editSetting(entity)
  }
}

class StdLabelTypeAction extends RestfulAction[StdLabelType]

class StdTypeAction extends RestfulAction[StdType]

class CourseAbilityRateAction extends RestfulAction[CourseAbilityRate]

class TeachingNatureAction extends RestfulAction[TeachingNature] {
  override def editSetting(entity: TeachingNature) = {
    put("categories", TeachingNatureCategory.values)
    super.editSetting(entity)
  }
}

class CourseNatureAction extends RestfulAction[CourseNature]

class TeachingMethodAction extends RestfulAction[TeachingMethod]

class CourseTypeAction extends RestfulAction[CourseType]

class CourseAssessCategoryAction extends RestfulAction[CourseAssessCategory]

class StdAlterTypeAction extends RestfulAction[StdAlterType]

class StdAlterReasonAction extends RestfulAction[StdAlterReason]

class BookTypeAction extends RestfulAction[BookType]

class BookAwardTypeAction extends RestfulAction[BookAwardType]
