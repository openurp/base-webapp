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
package org.openurp.base.web.action.admin.edu

import org.beangle.webmvc.api.view.View
import org.beangle.webmvc.entity.action.RestfulAction
import org.openurp.code.edu.model.EducationLevel
import org.openurp.base.edu.model.SchoolLength
import org.openurp.starter.edu.helper.ProjectSupport

/**
 * @author duantihua
 */
class SchoolLengthAction extends RestfulAction[SchoolLength] with ProjectSupport {

  override def editSetting(entity: SchoolLength): Unit = {
    put("levels", getCodes(classOf[EducationLevel]))
  }

  override protected def saveAndRedirect(entity: SchoolLength): View = {
    val view = super.saveAndRedirect(entity)
    entityDao.evict(entity.major)
    view
  }

}
