// 02 - Tipos de Dados em Swift

import Foundation

// TIPOS BÁSICOS

// Números inteiros
let numeroInteiro: Int = 42
let numeroPositivo: UInt = 100  // Apenas números positivos
let numeroPequeno: Int8 = 127   // -128 a 127
let numeroGrande: Int64 = 9223372036854775807

// Números decimais
let numeroDecimal: Float = 3.14159   // Precisão de 32 bits
let numeroDecimalPreciso: Double = 3.141592653589793  // Precisão de 64 bits

// Texto
let caractere: Character = "A"
let texto: String = "Olá, mundo!"
let textoMultiplo = """
Esta é uma string
que ocupa múltiplas
linhas
"""

// Booleanos
let verdadeiro: Bool = true
let falso: Bool = false

// OPERAÇÕES COM STRINGS
let primeiroNome = "Gabriel"
let sobrenome = "Paiva"
let nomeCompleto = primeiroNome + " " + sobrenome  // Concatenação

// Métodos úteis de String
print("Tamanho do nome: \(nomeCompleto.count)")
print("Nome em maiúsculas: \(nomeCompleto.uppercased())")
print("Nome em minúsculas: \(nomeCompleto.lowercased())")
print("O nome contém 'Maria'? \(nomeCompleto.contains("Maria"))")

// OPERAÇÕES MATEMÁTICAS
let a = 10
let b = 3

print("Soma: \(a + b)")
print("Subtração: \(a - b)")
print("Multiplicação: \(a * b)")
print("Divisão: \(a / b)")
print("Resto da divisão: \(a % b)")

// Operadores de comparação
print("a é maior que b? \(a > b)")
print("a é igual a b? \(a == b)")
print("a é diferente de b? \(a != b)")