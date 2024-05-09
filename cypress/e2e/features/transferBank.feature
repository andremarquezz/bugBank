Funcionalidade: Transferência

  Contexto: O usuario deve estar autenticado no sistema
   Dado que acessei a tela de transferencia

  Cenário: Transferência para conta valida com saldo suficiente
   Quando preencho o numero da conta
   E preencho o valor da transferencia com o saldo disponivel
   E preencho a descrição
   E clico no botão Transferir Agora
   Então devo visualizar a mensagem de transferencia com sucesso

  Esquema do Cenário: Não deve ser possivel realizar transferencia com saldo igual ou menor que zero
   Quando preencho o numero da conta
   E preencho o valor da transferencia com o <saldo>
   E preencho a descrição
   E clico no botão Transferir Agora
   Então devo visualizar uma mensagem de alerta que não possuo saldo suficiente
   Exemplos:
    | saldo |
    | 0     |
    | -500  |

  Cenário: Transferência para conta inexistente
   Quando preencho o numero da conta inexistente
   E preencho o valor da transferencia
   E preencho a descrição
   E clico no botão Transferir Agora
   Então devo visualizar a mensagem de conta inexistente
   
  Cenário: Transferência para conta com letras
   Quando preencho o numero da conta com letras
   Então devo visualizar a mensagem de conta inválida
  #Debito Tecnico: Não deveria permitir digitar caracteres e letras no numero de conta e digito

  Cenário: Não deve ser possivel realizar transferencia sem preencher descrição
   Quando preencho o numero da conta
   E preencho o valor da transferencia com o saldo disponivel
   E clico no botão Transferir Agora
   Então devo visualizar uma mensagem de alerta que o campo descrição é obrigatorio
  #Bug: Não deveria permitir realizar transferencia com o campo descrição sem preencher

    
    