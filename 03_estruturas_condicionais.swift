// 03 - Estruturas Condicionais em Swift

import Foundation

// IF SIMPLES
let idade = 18

if idade >= 18 {
    print("Você é maior de idade")
}

// IF-ELSE
let nota = 85

if nota >= 90 {
    print("Conceito A - Excelente!")
} else if nota >= 80 {
    print("Conceito B - Muito bom!")
} else if nota >= 70 {
    print("Conceito C - Bom")
} else if nota >= 60 {
    print("Conceito D - Regular")
} else {
    print("Conceito F - Precisa melhorar")
}

// OPERADORES LÓGICOS
let temDinheiro = true
let temTempo = false

if temDinheiro && temTempo {
    print("Pode viajar!")
} else if temDinheiro || temTempo {
    print("Pode fazer algo, mas não viajar")
} else {
    print("Precisa esperar uma melhor oportunidade")
}

// SWITCH STATEMENT - muito poderoso em Swift
let diaDaSemana = 3

switch diaDaSemana {
case 1:
    print("Segunda-feira")
case 2:
    print("Terça-feira")
case 3:
    print("Quarta-feira")
case 4:
    print("Quinta-feira")
case 5:
    print("Sexta-feira")
case 6, 7:  // Múltiplos valores
    print("Final de semana!")
default:
    print("Dia inválido")
}

// SWITCH com ranges
let temperatura = 25

switch temperatura {
case ...0:
    print("Muito frio - abaixo de zero")
case 1...15:
    print("Frio")
case 16...25:
    print("Agradável")
case 26...35:
    print("Quente")
case 36...:
    print("Muito quente")
default:
    print("Temperatura inválida")
}

// GUARD STATEMENT - para validação antecipada
func verificarIdade(_ idade: Int) {
    guard idade >= 0 else {
        print("Idade não pode ser negativa")
        return
    }
    
    guard idade <= 120 else {
        print("Idade muito alta")
        return
    }
    
    print("Idade válida: \(idade) anos")
}

verificarIdade(25)
verificarIdade(-5)
verificarIdade(150)