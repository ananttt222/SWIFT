![Swift Programming Language](https://codeit.us/wp-content/uploads/2018/10/swift-programming-language-scaled.webp)

# Códigos Swift para Iniciantes 📱

Este repositório contém exemplos de código Swift organizados de forma progressiva para iniciantes. Cada arquivo aborda conceitos fundamentais da linguagem.

## 📂 Estrutura dos Arquivos

### 1. **01_variaveis_e_constantes.swift**
- **Conceitos**: `let` (constantes) e `var` (variáveis)
- **Explicação**: Em Swift, use `let` para valores que não mudam e `var` para valores que podem ser modificados. A linguagem infere automaticamente os tipos, mas você pode especificá-los explicitamente.
- **String interpolation**: Use `\(variavel)` para inserir valores em strings

### 2. **02_tipos_de_dados.swift**
- **Conceitos**: Int, Double, Float, String, Character, Bool
- **Explicação**: Swift é uma linguagem fortemente tipada. Cada variável tem um tipo específico que determina que tipo de dados ela pode armazenar.
- **Operações**: Matemáticas básicas e manipulação de strings

### 3. **03_estruturas_condicionais.swift**
- **Conceitos**: `if`, `else if`, `else`, `switch`, `guard`
- **Explicação**: 
  - `if/else`: Para decisões simples
  - `switch`: Muito poderoso em Swift, suporta ranges e múltiplos valores
  - `guard`: Para validação antecipada e saída de funções

### 4. **04_loops.swift**
- **Conceitos**: `for-in`, `while`, `repeat-while`, `break`, `continue`
- **Explicação**:
  - `for-in`: Itera sobre sequências (ranges, arrays)
  - `while`: Loop com condição no início
  - `repeat-while`: Loop com condição no final (executa pelo menos uma vez)
  - Controle de fluxo com `break` e `continue`

### 5. **05_funcoes.swift**
- **Conceitos**: Definição, parâmetros, retorno, valores padrão, `inout`
- **Explicação**:
  - Funções são blocos de código reutilizáveis
  - Podem ter parâmetros nomeados externamente
  - `inout` permite modificar parâmetros por referência
  - Suportam valores padrão e parâmetros variádicos

### 6. **06_arrays_e_collections.swift**
- **Conceitos**: Arrays, Sets, Dicionários
- **Explicação**:
  - **Arrays**: Coleções ordenadas que permitem duplicatas
  - **Sets**: Coleções não ordenadas sem duplicatas
  - **Dicionários**: Coleções de pares chave-valor
  - Métodos funcionais: `filter`, `map`, `reduce`

### 7. **07_optionals.swift**
- **Conceitos**: `?`, `!`, `nil`, optional binding, guard let, nil coalescing
- **Explicação**:
  - Optionals permitem que variáveis sejam nulas
  - `?` declara um optional
  - `!` força o unwrapping (perigoso)
  - `if let` e `guard let` são formas seguras de unwrapping
  - `??` fornece valor padrão quando nil

### 8. **08_classes_e_structs.swift**
- **Conceitos**: Structs, Classes, Herança, Propriedades computadas
- **Explicação**:
  - **Structs**: Tipos de valor (copiados quando atribuídos)
  - **Classes**: Tipos de referência (compartilhados quando atribuídos)
  - Classes suportam herança, structs não
  - Propriedades computadas calculam valores dinamicamente

### 9. **09_exemplo_biblioteca.swift**
- **Conceitos**: Aplicação prática combinando todos os conceitos
- **Explicação**: Sistema completo de biblioteca que demonstra:
  - Uso de structs e classes
  - Arrays e manipulação de dados
  - Optionals e tratamento de erros
  - Funções e métodos
  - Encapsulamento e organização de código

## 🚀 Playground

### Opção de Playground Online:
- Use [SwiftFiddle](https://swiftfiddle.com/)
- Cole o código e execute

## 📚 Conceitos Fundamentais Aprendidos

1. **Segurança de Tipos**: Swift previne erros comuns através do sistema de tipos
2. **Optionals**: Tratamento seguro de valores nulos
3. **Inferência de Tipos**: Swift deduz tipos automaticamente
4. **Imutabilidade**: Diferença entre `let` e `var`
5. **Programação Orientada a Objetos**: Classes, structs, herança
6. **Programação Funcional**: `map`, `filter`, `reduce`
7. **Tratamento de Erros**: Uso de optionals e guard statements

## 🎯 Próximos Passos

Após dominar esses conceitos, você pode estudar:
- **Protocolos** e Extensions
- **Generics**
- **Error Handling** com `do-try-catch`
- **Closures** e programação funcional avançada
- **SwiftUI** para desenvolvimento de interfaces
- **Combine** para programação reativa

## 💡 Dicas de Estudo

1. **Execute cada exemplo**: Não apenas leia, execute o código
2. **Modifique os exemplos**: Experimente mudanças para ver o que acontece
3. **Pratique regularmente**: A prática leva à perfeição
4. **Use o Playground**: Ótimo para experimentação rápida
5. **Leia a documentação oficial**: [Swift.org](https://swift.org/documentation/)

---

**Lembre-se**: Swift é uma linguagem moderna, segura e expressiva. Estes exemplos cobrem as bases necessárias para começar sua jornada no desenvolvimento iOS/macOS! 🍎
