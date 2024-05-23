final class {{feature.pascalCase()}}DatasourceImpl 
    implements {{feature.pascalCase()}}Datasource {
  const {{feature.pascalCase()}}DatasourceImpl({required RestClient{{http_method.pascalCase()}} restClient{{http_method.pascalCase()}}})
}



















// cai nesse bloco se for true
{{#response}}
return response.data
{{/response}}




{{model}}



// cai nesse bloco se for false
{{^response}}

nao tem response
{{/response}}





{{http_method}}