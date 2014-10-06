[#ftl]
[@b.head/]
[@b.toolbar title="修改代码"]bar.addBack();[/@]
[@b.tabs]
    [@b.form action="!update?id=${codeMeta.id}" theme="list"]
      [@b.textfield name="codeMeta.name" label="代码名称" value="${codeMeta.name!}" required="true" maxlength="50"/]
      [@b.textfield name="codeMeta.title" label="代码中文名称" value="${codeMeta.title!}" required="true" maxlength="50"/]
      [@b.textfield name="codeMeta.className" label="代码类名" value="${codeMeta.className!}" required="true" maxlength="50"/]
      [@b.select name="codeMeta.category.id" label="所在分类" value="${codeMeta.category!}" style="width:200px;"
                 items=categorys option="id,name" empty="..."/]
      [@b.formfoot]
        [@b.reset/]&nbsp;&nbsp;[@b.submit value="action.submit"/]
      [/@]
    [/@]
  [/@]
[@b.foot/]