
public with sharing class AccountUpdateFields {
   //declarando a variável estática
    public static Id accountId;

   //criando o método para receber o id da conta
   public static void accountInput( Id inputId){
    accountId = inputId;
    System.debug('O id da conta foi recebido: ' + inputId);
   }

    

    //criando o método para retornar o id da conta
    public static void returnAccountId(){
        System.debug('O seu id é: ' + accountId);
    }

    //criando o método para atualizar os campos da conta após obter o id
    public static void updateAccountFields() {
       Account acc = [SELECT Id, Name, Description FROM Account WHERE Id = :accountId LIMIT 1];
        if (acc == null) {
            System.debug('Nenhum ID de conta foi fornecido.');
            return;
        }
        acc.Description = 'Atualizado via Apex:' + accountId;
        update acc;
        System.debug('A conta foi atualizada com sucesso: ' + acc.Id);
    }

    
}
//para executar o código, você pode usar os seguintes comandos no console do Developer Console ou em um script Apex:
//AccountUpdateFields.accountInput('001ak0000111SkUAAW');
//AccountUpdateFields.returnAccountId();
//AccountUpdateFields.updateAccountFields();