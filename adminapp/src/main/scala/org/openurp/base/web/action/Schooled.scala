/*
 * OpenURP, Agile University Resource Planning Solution.
 *
 * Copyright © 2005, The OpenURP Software.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
package org.openurp.base.web.action

import org.openurp.base.model.School
import org.beangle.webmvc.entity.action.RestfulAction
import org.beangle.data.dao.OqlBuilder
import org.openurp.base.model.Department

trait Schooled { this: RestfulAction[_] =>

  def getSchool(): School = {
    val schools = entityDao.findBy(classOf[School], "code", List(get("school").get))
    schools.head
  }

  def getSchoolCode: String = {
    get("school").get
  }

  def getDepartments(): Seq[Department] = {
    entityDao.search(OqlBuilder.from(classOf[Department], "c").where("c.school.code=:schoolCode", getSchoolCode))
  }
}
