package org.openurp.base.model.action

import org.beangle.webmvc.entity.action.RestfulAction
import org.openurp.base.model.{ Department, School }

class SchoolAction extends RestfulAction[School]

class DepartmentAction extends RestfulAction[Department]