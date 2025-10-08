// 06 - Arrays e Collections em Swift

import Foundation

// CRIANDO ARRAYS
var frutas = ["Maçã", "Banana", "Laranja"]  // Array mutável
let cores = ["Vermelho", "Verde", "Azul"]   // Array imutável

// Array vazio
var numeros: [Int] = []
var nomes = [String]()  // Outra forma

// ADICIONANDO ELEMENTOS
frutas.append("Uva")                    // Adiciona no final
frutas.insert("Manga", at: 1)          // Insere na posição específica
frutas += ["Pêra", "Abacaxi"]          // Adiciona múltiplos elementos

print("Frutas: \(frutas)")

// ACESSANDO ELEMENTOS
print("Primeira fruta: \(frutas[0])")
print("Última fruta: \(frutas[frutas.count - 1])")
print("Última fruta (forma segura): \(frutas.last ?? "Nenhuma")")

// MODIFICANDO ELEMENTOS
frutas[0] = "Maçã Verde"
print("Frutas modificadas: \(frutas)")

// REMOVENDO ELEMENTOS
frutas.remove(at: 1)                    // Remove por índice
frutas.removeLast()                     // Remove o último
frutas.removeAll { $0.contains("Verde") } // Remove baseado em condição

print("Frutas após remoções: \(frutas)")

// PROPRIEDADES ÚTEIS
print("Quantidade de frutas: \(frutas.count)")
print("Array está vazio? \(frutas.isEmpty)")

// ITERANDO ARRAYS
print("\n=== ITERANDO ARRAYS ===")
for fruta in frutas {
    print("🍎 \(fruta)")
}

// Com índice
for (indice, fruta) in frutas.enumerated() {
    print("Posição \(indice): \(fruta)")
}

// MÉTODOS ÚTEIS DE ARRAYS
let numericArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

// Filtrar
let pares = numericArray.filter { $0 % 2 == 0 }
print("Números pares: \(pares)")

// Mapear (transformar)
let quadrados = numericArray.map { $0 * $0 }
print("Quadrados: \(quadrados)")

// Reduzir
let soma = numericArray.reduce(0, +)
print("Soma de todos: \(soma)")

// Encontrar primeiro
let primeiroPar = numericArray.first { $0 % 2 == 0 }
print("Primeiro par: \(primeiroPar ?? 0)")

// SETS - Coleções sem elementos duplicados
var letras: Set<String> = ["A", "B", "C", "A", "B"]  // Duplicatas são ignoradas
print("Set de letras: \(letras)")

letras.insert("D")
letras.remove("A")
print("Set modificado: \(letras)")
print("Contém 'B'? \(letras.contains("B"))")

// DICIONÁRIOS - Coleções chave-valor
var idades = ["João": 25, "Maria": 30, "Pedro": 22]

// Acessando valores
print("Idade do João: \(idades["João"] ?? 0)")

// Adicionando/modificando
idades["Ana"] = 28
idades["João"] = 26  // Modifica o valor existente

print("Dicionário de idades: \(idades)")

// Iterando dicionários
for (nome, idade) in idades {
    print("\(nome) tem \(idade) anos")
}

// Apenas chaves ou valores
print("Nomes: \(Array(idades.keys))")
print("Idades: \(Array(idades.values))")