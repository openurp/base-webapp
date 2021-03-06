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
package org.openurp.base.ws.edu

import org.beangle.data.model.Entity
import org.beangle.webmvc.api.annotation.response
import org.openurp.base.edu.model.Classroom
import org.openurp.base.ws.RestfulService

class ClassroomWS extends RestfulService[Classroom] {
  @response
  override def index(): Any = {
    put("properties", List(
      classOf[Classroom] -> List("id", "name", "code", "campus", "building", "roomType", "capacity", "courseCapacity", "examCapacity"),
      classOf[Entity[_]] -> List("id","name")))

    val builder = getQueryBuilder
    builder.orderBy("classroom.name")
    getInt("page") match {
      case Some(p) => entityDao.search(builder)
      case None => entityDao.search(builder.limit(null))
    }
  }
}
