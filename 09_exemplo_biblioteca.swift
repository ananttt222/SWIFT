// 09 - Exemplo Prático: Sistema de Biblioteca

import Foundation

// STRUCT para representar um Livro
struct Livro {
    let id: Int
    let titulo: String
    let autor: String
    let anoPublicacao: Int
    var disponivel: Bool
    
    func mostrarInfo() {
        let status = disponivel ? "📗 Disponível" : "📕 Emprestado"
        print("\(status) - \(titulo) por \(autor) (\(anoPublicacao))")
    }
}

// CLASS para representar um Usuario
class Usuario {
    let id: Int
    let nome: String
    let email: String
    var livrosEmprestados: [Livro] = []
    
    init(id: Int, nome: String, email: String) {
        self.id = id
        self.nome = nome
        self.email = email
    }
    
    func mostrarInfo() {
        print("👤 \(nome) (\(email))")
        print("📚 Livros emprestados: \(livrosEmprestados.count)")
    }
}

// CLASS principal para gerenciar a Biblioteca
class Biblioteca {
    private var livros: [Livro] = []
    private var usuarios: [Usuario] = []
    private var proximoIdLivro = 1
    private var proximoIdUsuario = 1
    
    // Adicionar livro
    func adicionarLivro(titulo: String, autor: String, ano: Int) {
        let novoLivro = Livro(
            id: proximoIdLivro,
            titulo: titulo,
            autor: autor,
            anoPublicacao: ano,
            disponivel: true
        )
        livros.append(novoLivro)
        proximoIdLivro += 1
        print("✅ Livro '\(titulo)' adicionado à biblioteca")
    }
    
    // Cadastrar usuário
    func cadastrarUsuario(nome: String, email: String) {
        let novoUsuario = Usuario(id: proximoIdUsuario, nome: nome, email: email)
        usuarios.append(novoUsuario)
        proximoIdUsuario += 1
        print("✅ Usuário '\(nome)' cadastrado")
    }
    
    // Listar livros disponíveis
    func listarLivrosDisponiveis() {
        print("\n📚 LIVROS DISPONÍVEIS:")
        let livrosDisponiveis = livros.filter { $0.disponivel }
        
        if livrosDisponiveis.isEmpty {
            print("Nenhum livro disponível no momento")
        } else {
            for livro in livrosDisponiveis {
                livro.mostrarInfo()
            }
        }
    }
    
    // Buscar livro por título
    func buscarLivro(titulo: String) -> Livro? {
        return livros.first { $0.titulo.lowercased().contains(titulo.lowercased()) }
    }
    
    // Emprestar livro
    func emprestarLivro(tituloLivro: String, emailUsuario: String) {
        guard let usuario = usuarios.first(where: { $0.email == emailUsuario }) else {
            print("❌ Usuário não encontrado")
            return
        }
        
        guard let indiceDoLivro = livros.firstIndex(where: { 
            $0.titulo.lowercased().contains(tituloLivro.lowercased()) && $0.disponivel 
        }) else {
            print("❌ Livro não disponível")
            return
        }
        
        // Modificar o livro para indisponível
        livros[indiceDoLivro].disponivel = false
        
        // Adicionar livro à lista do usuário
        usuario.livrosEmprestados.append(livros[indiceDoLivro])
        
        print("✅ Livro '\(livros[indiceDoLivro].titulo)' emprestado para \(usuario.nome)")
    }
    
    // Devolver livro
    func devolverLivro(tituloLivro: String, emailUsuario: String) {
        guard let usuario = usuarios.first(where: { $0.email == emailUsuario }) else {
            print("❌ Usuário não encontrado")
            return
        }
        
        guard let indiceLivroUsuario = usuario.livrosEmprestados.firstIndex(where: { 
            $0.titulo.lowercased().contains(tituloLivro.lowercased()) 
        }) else {
            print("❌ Este usuário não tem este livro emprestado")
            return
        }
        
        let livroDevolvido = usuario.livrosEmprestados[indiceLivroUsuario]
        
        // Remover da lista do usuário
        usuario.livrosEmprestados.remove(at: indiceLivroUsuario)
        
        // Tornar disponível novamente na biblioteca
        if let indiceLivroBiblioteca = livros.firstIndex(where: { $0.id == livroDevolvido.id }) {
            livros[indiceLivroBiblioteca].disponivel = true
        }
        
        print("✅ Livro '\(livroDevolvido.titulo)' devolvido por \(usuario.nome)")
    }
    
    // Mostrar relatório da biblioteca
    func mostrarRelatorio() {
        print("\n📊 RELATÓRIO DA BIBLIOTECA")
        print("=" * 40)
        print("Total de livros: \(livros.count)")
        print("Livros disponíveis: \(livros.filter { $0.disponivel }.count)")
        print("Livros emprestados: \(livros.filter { !$0.disponivel }.count)")
        print("Total de usuários: \(usuarios.count)")
        
        print("\n👥 USUÁRIOS E SEUS LIVROS:")
        for usuario in usuarios {
            usuario.mostrarInfo()
            if !usuario.livrosEmprestados.isEmpty {
                for livro in usuario.livrosEmprestados {
                    print("  • \(livro.titulo)")
                }
            }
            print("")
        }
    }
}

// DEMONSTRAÇÃO DO SISTEMA
print("🏛️ SISTEMA DE BIBLIOTECA")
print("=" * 50)

let biblioteca = Biblioteca()

// Cadastrando livros
biblioteca.adicionarLivro(titulo: "1984", autor: "George Orwell", ano: 1949)
biblioteca.adicionarLivro(titulo: "Dom Casmurro", autor: "Machado de Assis", ano: 1899)
biblioteca.adicionarLivro(titulo: "O Pequeno Príncipe", autor: "Antoine de Saint-Exupéry", ano: 1943)

// Cadastrando usuários
biblioteca.cadastrarUsuario(nome: "Ana Silva", email: "ana@email.com")
biblioteca.cadastrarUsuario(nome: "Carlos Santos", email: "carlos@email.com")

// Listando livros disponíveis
biblioteca.listarLivrosDisponiveis()

// Emprestando livros
biblioteca.emprestarLivro(tituloLivro: "1984", emailUsuario: "ana@email.com")
biblioteca.emprestarLivro(tituloLivro: "Dom Casmurro", emailUsuario: "carlos@email.com")

// Listando livros após empréstimos
biblioteca.listarLivrosDisponiveis()

// Devolvendo um livro
biblioteca.devolverLivro(tituloLivro: "1984", emailUsuario: "ana@email.com")

// Relatório final
biblioteca.mostrarRelatorio()