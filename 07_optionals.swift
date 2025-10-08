// 07 - Optionals em Swift

import Foundation

// OPTIONALS - Valores que podem ser nulos
// Em Swift, uma variável normal NÃO pode ser nula
// Para permitir nulos, usamos optionals (?)

var nome: String? = "João"
var idade: Int? = nil

print("Nome: \(nome)")  // Mostra Optional("João")
print("Idade: \(idade)")  // Mostra nil

// UNWRAPPING FORÇADO (!) - Perigoso se for nil
if nome != nil {
    print("Nome unwrapped: \(nome!)")  // Remove o Optional
}

// OPTIONAL BINDING - Forma segura
if let nomeSeguro = nome {
    print("Nome existe: \(nomeSeguro)")
} else {
    print("Nome é nil")
}

if let idadeSegura = idade {
    print("Idade existe: \(idadeSegura)")
} else {
    print("Idade é nil")
}

// MÚLTIPLO OPTIONAL BINDING
var email: String? = "joao@email.com"
var telefone: String? = "123456789"

if let nomeValido = nome, let emailValido = email {
    print("Nome: \(nomeValido), Email: \(emailValido)")
}

// GUARD LET - Para saída antecipada
func processarUsuario(nome: String?, email: String?) {
    guard let nomeValido = nome else {
        print("Nome é obrigatório")
        return
    }
    
    guard let emailValido = email else {
        print("Email é obrigatório")
        return
    }
    
    print("Processando usuário: \(nomeValido) - \(emailValido)")
}

processarUsuario(nome: "Maria", email: "maria@email.com")
processarUsuario(nome: nil, email: "email@teste.com")

// NIL COALESCING OPERATOR (??) - Valor padrão
let nomeUsuario = nome ?? "Usuário Anônimo"
let idadeUsuario = idade ?? 0

print("Nome do usuário: \(nomeUsuario)")
print("Idade do usuário: \(idadeUsuario)")

// OPTIONAL CHAINING - Chamadas seguras em cadeia
class Pessoa {
    var endereco: Endereco?
}

class Endereco {
    var rua: String?
    var numero: Int?
}

let pessoa = Pessoa()
pessoa.endereco = Endereco()
pessoa.endereco?.rua = "Rua das Flores"
pessoa.endereco?.numero = 123

// Acesso seguro em cadeia
let ruaDaPessoa = pessoa.endereco?.rua ?? "Rua não informada"
let numeroDaPessoa = pessoa.endereco?.numero ?? 0

print("Endereço: \(ruaDaPessoa), \(numeroDaPessoa)")

// IMPLICITLY UNWRAPPED OPTIONALS (!) - Use com cuidado
var senhaTemporaria: String! = "123456"
// Pode ser acessada diretamente, mas ainda pode ser nil
print("Senha: \(senhaTemporaria)")

// FUNÇÃO QUE RETORNA OPTIONAL
func buscarIdadePorNome(_ nome: String) -> Int? {
    let idades = ["João": 25, "Maria": 30, "Pedro": 22]
    return idades[nome]
}

if let idadeEncontrada = buscarIdadePorNome("Maria") {
    print("Maria tem \(idadeEncontrada) anos")
} else {
    print("Pessoa não encontrada")
}

// CONVERTENDO STRING PARA NÚMERO (retorna optional)
let textoNumero = "42"
let textoInvalido = "abc"

if let numero = Int(textoNumero) {
    print("Número convertido: \(numero)")
}

if let numeroInvalido = Int(textoInvalido) {
    print("Convertido: \(numeroInvalido)")
} else {
    print("Não foi possível converter '\(textoInvalido)' para número")
}