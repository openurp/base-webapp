[#ftl]
[@b.head/]
[@b.toolbar title="修改代码"]bar.addBack();[/@]
[@b.tabs]
  [#assign sa][#if codeMeta.persisted]!update?id=${codeMeta.id!}[#else]!save[/#if][/#assign]
  [@b.form action=sa theme="list"]
      [@b.textfield name="codeMeta.name" label="名称" value="${codeMeta.name!}" required="true" maxlength="50"/]
      [@b.textfield name="codeMeta.title" label="中文名称" value="${codeMeta.title!}" required="true" maxlength="50"/]
      [@b.textfield name="codeMeta.className" label="代码类名" value="${codeMeta.className!}" required="true" maxlength="50"/]
      [@b.select name="codeMeta.category.id" label="所在分类" value="${(codeMeta.category.id)!}" style="width:200px;"
                 href=urp.service("/base/code/code-categories") empty="..."/]
      [@b.formfoot]
        [@b.reset/]&nbsp;&nbsp;[@b.submit value="action.submit"/]
      [/@]
    [/@]
  [/@]
[@b.foot/]