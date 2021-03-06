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

import java.io.{ByteArrayInputStream, ByteArrayOutputStream}
import java.time.LocalDate

import org.beangle.data.dao.OqlBuilder
import org.beangle.data.transfer.excel.ExcelSchema
import org.beangle.data.transfer.importer.ImportSetting
import org.beangle.data.transfer.importer.listener.ForeignerListener
import org.beangle.webmvc.api.annotation.response
import org.beangle.webmvc.api.view.{Stream, View}
import org.openurp.code.sin.model.{BookCategory, Press}
import org.openurp.base.edu.code.model.{BookAwardType, BookType}
import org.openurp.base.edu.model.Textbook
import org.openurp.base.edu.web.helper.TextbookImportListener

class TextbookAction extends ProjectRestfulAction[Textbook] {

  override protected def indexSetting(): Unit = {
    put("project", getProject)
    super.indexSetting()
  }

  protected override def editSetting(textbook: Textbook): Unit = {
    put("bookTypes", getCodes(classOf[BookType]))
    put("presses", getCodes(classOf[Press]))
    put("awardTypes", getCodes(classOf[BookAwardType]))
    put("categories", getCodes(classOf[BookCategory]))
  }

  override protected def getQueryBuilder: OqlBuilder[Textbook] = {
    val builder: OqlBuilder[Textbook] = super.getQueryBuilder
    getBoolean("active") foreach {
      case true =>
        builder.where("textbook.endOn is null or textbook.endOn >=:now", LocalDate.now)
      case false =>
        builder.where("textbook.endOn is not null and textbook.endOn <:now", LocalDate.now)
    }

    builder.limit(getPageLimit)
    builder
  }

  def innerIndex(): View = {
    forward()
  }

  protected override def saveAndRedirect(book: Textbook): View = {
    if (null == book.beginOn) {
      book.beginOn = LocalDate.now
    }
    super.saveAndRedirect(book)
  }

  @response
  def downloadTemplate(): Any = {
    val presses = entityDao.search(OqlBuilder.from(classOf[Press], "p").orderBy("p.name")).map(_.name)
    val categories = entityDao.search(OqlBuilder.from(classOf[BookCategory], "bc").orderBy("bc.name")).map(_.name)
    val bookTypes = entityDao.search(OqlBuilder.from(classOf[BookType], "bt").orderBy("bt.name")).map(_.name)
    val awardTypes = entityDao.search(OqlBuilder.from(classOf[BookAwardType], "bat").orderBy("bat.name")).map(_.name)

    val schema = new ExcelSchema()
    val sheet = schema.createScheet("数据模板")
    sheet.title("教材信息模板")
    sheet.remark("特别说明：\n1、不可改变本表格的行列结构以及批注，否则将会导入失败！\n2、必须按照规格说明的格式填写。\n3、可以多次导入，重复的信息会被新数据更新覆盖。\n4、保存的excel文件名称可以自定。")
    sheet.add("ISBN", "textbook.isbn").length(13).required().remark("≤13位")
    sheet.add("名称", "textbook.name").length(100).required()
    sheet.add("作者", "textbook.author").length(50).required()
    sheet.add("译者", "textbook.translator").length(50)
    sheet.add("出版社", "textbook.press.name").ref(presses)
    sheet.add("版次", "textbook.edition").length(20).required()
    sheet.add("出版年月日", "textbook.publishedOn").date().required()
    sheet.add("是否自编", "textbook.madeInSchool").bool()
    sheet.add("教材类型", "textbook.bookType.name").ref(bookTypes)
    sheet.add("图书分类", "textbook.category.name").ref(categories)
    sheet.add("获奖级别", "textbook.awardType.name").ref(awardTypes)
    sheet.add("颁奖单位", "textbook.awardOrg").length(50)
    sheet.add("丛书", "textbook.series").length(100)
    sheet.add("价格", "textbook.price").decimal()

    val code = schema.createScheet("数据字典")
    code.add("出版社").data(presses)
    code.add("图书分类").data(categories)
    code.add("教材类型").data(bookTypes)
    code.add("获奖级别").data(awardTypes)
    val os = new ByteArrayOutputStream()
    schema.generate(os)
    Stream(new ByteArrayInputStream(os.toByteArray), "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "教材模板.xlsx")
  }

  protected override def configImport(setting: ImportSetting): Unit = {
    val fl = new ForeignerListener(entityDao)
    fl.addForeigerKey("name")
    setting.listeners = List(fl, new TextbookImportListener(getProject, entityDao))
  }
}
