// 05 - Funções em Swift

import Foundation

// FUNÇÃO SIMPLES SEM PARÂMETROS
func saudar() {
    print("Olá! Como você está?")
}

// Chamando a função
saudar()

// FUNÇÃO COM PARÂMETROS
func saudarPessoa(nome: String) {
    print("Olá, \(nome)! Como você está?")
}

saudarPessoa(nome: "Maria")

// FUNÇÃO COM MÚLTIPLOS PARÂMETROS
func somar(a: Int, b: Int) {
    let resultado = a + b
    print("\(a) + \(b) = \(resultado)")
}

somar(a: 5, b: 3)

// FUNÇÃO COM VALOR DE RETORNO
func multiplicar(x: Int, y: Int) -> Int {
    return x * y
}

let produto = multiplicar(x: 4, y: 6)
print("Produto: \(produto)")

// FUNÇÃO COM RETURN IMPLÍCITO (uma linha só)
func elevarAoQuadrado(numero: Int) -> Int {
    numero * numero  // Não precisa do 'return'
}

print("5² = \(elevarAoQuadrado(numero: 5))")

// FUNÇÃO COM PARÂMETROS NOMEADOS EXTERNAMENTE
func calcularArea(largura width: Double, altura height: Double) -> Double {
    return width * height
}

let area = calcularArea(largura: 10.5, altura: 8.2)
print("Área: \(area)")

// FUNÇÃO COM VALORES PADRÃO
func criarMensagem(para nome: String, de remetente: String = "Sistema") -> String {
    return "De: \(remetente)\nPara: \(nome)\nMensagem enviada!"
}

print(criarMensagem(para: "João"))
print(criarMensagem(para: "Maria", de: "Pedro"))

// FUNÇÃO COM PARÂMETROS VARIÁDICOS
func calcularMedia(numeros: Double...) -> Double {
    let soma = numeros.reduce(0, +)
    return soma / Double(numeros.count)
}

let media1 = calcularMedia(numeros: 8.5, 7.2, 9.1)
let media2 = calcularMedia(numeros: 10, 8, 9, 7, 8.5)
print("Média 1: \(media1)")
print("Média 2: \(media2)")

// FUNÇÃO QUE MODIFICA PARÂMETROS (inout)
func duplicarValor(numero: inout Int) {
    numero *= 2
}

var meuNumero = 5
print("Antes: \(meuNumero)")
duplicarValor(numero: &meuNumero)
print("Depois: \(meuNumero)")

// FUNÇÃO DENTRO DE FUNÇÃO
func operacaoMatematica() {
    func somar(a: Int, b: Int) -> Int {
        return a + b
    }
    
    func multiplicar(a: Int, b: Int) -> Int {
        return a * b
    }
    
    let resultadoSoma = somar(a: 3, b: 4)
    let resultadoMultiplicacao = multiplicar(a: 3, b: 4)
    
    print("Soma: \(resultadoSoma)")
    print("Multiplicação: \(resultadoMultiplicacao)")
}

operacaoMatematica()