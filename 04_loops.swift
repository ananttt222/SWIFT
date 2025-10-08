// 04 - Loops (Estruturas de Repetição) em Swift

import Foundation

// FOR-IN LOOP - o mais comum
print("=== FOR-IN SIMPLES ===")
for i in 1...5 {
    print("Contando: \(i)")
}

// FOR-IN com range fechado
print("\n=== CONTAGEM REGRESSIVA ===")
for i in (1...5).reversed() {
    print("Contagem regressiva: \(i)")
}

// FOR-IN com range semi-aberto
print("\n=== RANGE SEMI-ABERTO ===")
for i in 0..<5 {  // De 0 até 4 (não inclui 5)
    print("Índice: \(i)")
}

// FOR-IN pulando números
print("\n=== PULANDO NÚMEROS ===")
for i in stride(from: 0, to: 20, by: 3) {
    print("Múltiplos próximos de 3: \(i)")
}

// FOR-IN com arrays
print("\n=== ITERANDO ARRAY ===")
let frutas = ["Maçã", "Banana", "Laranja", "Uva"]

for fruta in frutas {
    print("Fruta: \(fruta)")
}

// FOR-IN com índice e valor
print("\n=== COM ÍNDICE E VALOR ===")
for (indice, fruta) in frutas.enumerated() {
    print("Posição \(indice): \(fruta)")
}

// WHILE LOOP
print("\n=== WHILE LOOP ===")
var contador = 1
while contador <= 3 {
    print("While: \(contador)")
    contador += 1
}

// REPEAT-WHILE (equivale ao do-while de outras linguagens)
print("\n=== REPEAT-WHILE ===")
var numero = 5
repeat {
    print("Repeat-while: \(numero)")
    numero -= 1
} while numero > 0

// CONTROLE DE FLUXO - break e continue
print("\n=== BREAK E CONTINUE ===")
for i in 1...10 {
    if i == 5 {
        continue  // Pula o 5
    }
    if i == 8 {
        break     // Para no 8
    }
    print("Número: \(i)")
}

// LOOP ANINHADO com labels
print("\n=== LOOPS ANINHADOS ===")
outerLoop: for i in 1...3 {
    innerLoop: for j in 1...3 {
        if i == 2 && j == 2 {
            break outerLoop  // Sai do loop externo
        }
        print("i: \(i), j: \(j)")
    }
}