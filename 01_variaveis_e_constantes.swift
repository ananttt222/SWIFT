// 01 - Variáveis e Constantes em Swift

import Foundation

// CONSTANTES (let) - Valores que não mudam
let nome = "João"
let idade = 25
let pi = 3.14159

// VARIÁVEIS (var) - Valores que podem mudar
var pontuacao = 0
var estaLogado = false
var saldo = 1500.50

// Mudando valores de variáveis
pontuacao = 100
estaLogado = true
saldo = saldo + 200

// Tipos explícitos (opcional, Swift infere automaticamente)
let cidade: String = "Rio de Janeiro"
var contador: Int = 0
var preco: Double = 99.99
var ativo: Bool = true

// Imprimindo valores
print("Nome: \(nome)")
print("Idade: \(idade)")
print("Pontuação: \(pontuacao)")
print("Está logado: \(estaLogado)")
print("Saldo: R$ \(saldo)")

// String interpolation - forma elegante de inserir valores em strings
print("Olá \(nome), você tem \(idade) anos e mora em \(cidade)")