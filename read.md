Logica de alguns bricks


posso passar blocos de arquivos para template dessa forma

criando como arquivo na pasta:
{{~ copy_with }}


e depois para chamar eles diretamente no arquivo utilizo

{{> copy_with }}


posso criar condicoes de true ou false

se for TRUE chamo dessa forma passando a variavel:


{{#use_copywith}}
  {{> copy_with }}
{{/use_copywith}}


se ela for FALSE seria chamada dessa forma:


{{^use_copywith}}
  {{> copy_with }}
{{/use_copywith}}

basicamente TRUE, chama com o #, FALSE chama com o ^.

utilizando os hooks eu posso adicionar outras variaveis que nao foram passadas no brick.yaml, assim tendo um dinamismo conforme necessario as logicas.

 context.vars = {
    ...context.vars,
    'fullname': 'robertao',
  };

 assim como ler elas tbm:
// Read vars.
  final name = context.vars['name'];


ou atualizar:
// Update vars.
context.vars['name'] = 'jonas';



