// 08 - Classes e Structs em Swift

import Foundation

// STRUCT - Tipo de valor (copiado quando atribuído)
struct Pessoa {
    var nome: String
    var idade: Int
    
    // Inicializador personalizado
    init(nome: String, idade: Int) {
        self.nome = nome
        self.idade = idade
    }
    
    // Método
    func apresentar() {
        print("Olá, eu sou \(nome) e tenho \(idade) anos")
    }
    
    // Método que modifica a struct (mutating)
    mutating func fazerAniversario() {
        idade += 1
        print("\(nome) agora tem \(idade) anos! 🎂")
    }
}

// Criando e usando struct
var pessoa1 = Pessoa(nome: "João", idade: 25)
pessoa1.apresentar()
pessoa1.fazerAniversario()

var pessoa2 = pessoa1  // Cópia é feita
pessoa2.nome = "Maria"
print("Pessoa 1: \(pessoa1.nome)")  // Ainda é João
print("Pessoa 2: \(pessoa2.nome)")  // Agora é Maria

// CLASS - Tipo de referência (compartilhado quando atribuído)
class Veiculo {
    var marca: String
    var modelo: String
    var ano: Int
    
    // Inicializador
    init(marca: String, modelo: String, ano: Int) {
        self.marca = marca
        self.modelo = modelo
        self.ano = ano
    }
    
    // Método
    func mostrarInfo() {
        print("Veículo: \(marca) \(modelo) (\(ano))")
    }
    
    func acelerar() {
        print("\(marca) \(modelo) está acelerando! 🚗💨")
    }
}

// HERANÇA - Classes podem herdar de outras classes
class Carro: Veiculo {
    var numeroPortas: Int
    
    init(marca: String, modelo: String, ano: Int, numeroPortas: Int) {
        self.numeroPortas = numeroPortas
        super.init(marca: marca, modelo: modelo, ano: ano)  // Chama o init da classe pai
    }
    
    // Sobrescrevendo método da classe pai
    override func mostrarInfo() {
        super.mostrarInfo()  // Chama o método original
        print("Número de portas: \(numeroPortas)")
    }
    
    func abrirPorta() {
        print("Abrindo uma das \(numeroPortas) portas")
    }
}

// Criando e usando classes
let carro1 = Carro(marca: "Honda", modelo: "Civic", ano: 2022, numeroPortas: 4)
carro1.mostrarInfo()
carro1.acelerar()
carro1.abrirPorta()

let carro2 = carro1  // Referência é compartilhada, não copiada
carro2.marca = "Toyota"
print("Carro 1 marca: \(carro1.marca)")  // Também mudou para Toyota!
print("Carro 2 marca: \(carro2.marca)")  // Toyota

// PROPRIEDADES COMPUTADAS
struct Retangulo {
    var largura: Double
    var altura: Double
    
    // Propriedade computada
    var area: Double {
        return largura * altura
    }
    
    // Propriedade com getter e setter
    var perimetro: Double {
        get {
            return 2 * (largura + altura)
        }
        set {
            // Assumindo que largura e altura são iguais para simplicidade
            let lado = newValue / 4
            largura = lado
            altura = lado
        }
    }
}

var retangulo = Retangulo(largura: 5, altura: 3)
print("Área: \(retangulo.area)")
print("Perímetro: \(retangulo.perimetro)")

retangulo.perimetro = 20  // Usa o setter
print("Nova largura: \(retangulo.largura)")
print("Nova altura: \(retangulo.altura)")

// PROPERTY OBSERVERS - Observadores de propriedade
class ContaBancaria {
    var saldo: Double = 0 {
        willSet {
            print("Saldo vai mudar de \(saldo) para \(newValue)")
        }
        didSet {
            print("Saldo mudou de \(oldValue) para \(saldo)")
            if saldo < 0 {
                print("⚠️ Conta está no vermelho!")
            }
        }
    }
    
    func depositar(valor: Double) {
        saldo += valor
    }
    
    func sacar(valor: Double) {
        saldo -= valor
    }
}

let conta = ContaBancaria()
conta.depositar(valor: 1000)
conta.sacar(valor: 1200)

// MÉTODOS ESTÁTICOS
struct Matematica {
    static func somar(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
    
    static let pi = 3.14159
}

print("Soma: \(Matematica.somar(5, 3))")
print("Pi: \(Matematica.pi)")