[#ftl attributes={"content_type":"application/json"}]

[[#list codes as code]
{id:${code.id},[#t]
code:"${code.code}",[#t]
name:"${code.name}",[#t]
enName:"${code.enName!}",[#t]
alphaCode:"${code.alphaCode!}"}[#t]
[#if code_has_next],[/#if][#t]
[/#list]

]