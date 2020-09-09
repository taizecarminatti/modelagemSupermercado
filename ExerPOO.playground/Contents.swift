import UIKit

class Usuario{
    
    var nome: String
    var telefone: Int
    var cpf: String
    var endereco: String
    var email: String
    var dataNascimento: String
    
    
    
    init(nome: String, telefone: Int, cpf: String, endereco:String, email: String, dataNascimento: String) {
        self.nome = nome
        self.telefone = telefone
        self.cpf = cpf
        self.endereco = endereco
        self.email = email
        self.dataNascimento = dataNascimento
    }
    
    // simula cadastro de pessoa
    func comparaCpf(){
        if(cpf != cpf){
            print("Usuario já cadastrado!!!")
        }else{
            print("Usuario cadastrado com sucesso")
        }
      }
    
    // simula aniversario usuario
    func aniversario(){
        if(dataNascimento == dataNascimento){
            print("Parabéns pelo seu aniversário :) ")
        }
    }
    
}

class Produto{
   
    var idProduto: String
    var nomeProduto: String
    var valorUnitario: Double
    var quantidadeEstoque: Int

    
    init(idProduto: String, nomeProduto: String, valorUnitario: Double, quantidadeEstoque: Int) {
        self.idProduto = idProduto
        self.nomeProduto = nomeProduto
        self.valorUnitario = valorUnitario
        self.quantidadeEstoque = quantidadeEstoque
    }
    
    
    

}

class Venda : Produto{
    
    var quantidadeVendida : Int
   
    init(idProduto: String, nomeProduto: String, valorUnitario: Double, quantidadeEstoque: Int, quantidadeVendida: Int) {
        self.quantidadeVendida = quantidadeVendida
        super.init(idProduto: idProduto, nomeProduto: nomeProduto, valorUnitario: valorUnitario, quantidadeEstoque: quantidadeEstoque)
    }
        
    func valorTotalPagamento(valorUnitario : Double, quantidade : Int){
        var valorTotal: Double
        valorTotal = valorUnitario * Double(quantidade)
        print("O valor total para pagamento é de R$ \(valorTotal)")
    }
    
    func formaDePagamento(formaPagamento: String) -> String {
        print("Escolha uma forma de pagamento: \n 1 - Débito \n 2 - Crédito \n 3 - Dinheiro")
        
        switch formaPagamento {
        case "1" :
            print("A forma de pagamento escolhida é: Débito")
        case "2":
            print("A forma de pagamento escolhida é: Crédito")
        case "3":
            print("A forma de pagamento escolhida é: Dinheiro")
        default:
            print("Escolha uma forma de pagamento correta")
        }
        return formaPagamento
    }
    
    func quantidadeEmEstoque(){
        if(quantidadeEstoque == 0){
            print("Produto indisponivél")
        }
    }
    
}

let cliente1 = Usuario(nome: "Maria", telefone: 111111111, cpf: "12345678999", endereco: "Rua Doze, 1", email: "maria@gmail.com", dataNascimento: "10/11/1988")

cliente1.comparaCpf()
cliente1.aniversario()


let compra = Venda(idProduto: "123", nomeProduto: "Sorvete", valorUnitario: 1.99, quantidadeEstoque: 0, quantidadeVendida: 3)

compra.quantidadeEmEstoque()
compra.valorTotalPagamento(valorUnitario: 1.99, quantidade: 2)
compra.formaDePagamento(formaPagamento: "1")


