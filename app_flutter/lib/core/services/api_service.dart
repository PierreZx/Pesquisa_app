import '../models/search_result_model.dart';

// Esta classe será responsável por toda a comunicação com nosso backend.
class ApiService {
  // Por enquanto, esta função FINGE que está buscando na internet.
  // Ela espera 2 segundos e depois retorna uma lista de resultados falsos.
  // Isso nos permite construir toda a interface do app sem precisar da API Python ainda.
  Future<List<SearchResult>> search(String query) async {
    print('Iniciando busca FAKE pela query: "$query"');

    // Simula a demora de uma chamada de rede (2 segundos)
    await Future.delayed(const Duration(seconds: 2));

    // Se a busca for vazia, retorna uma lista vazia.
    if (query.isEmpty) {
      return [];
    }

    // Retorna uma lista de resultados "mockados" (falsos)
    return [
      SearchResult(
        title: 'O que é Flutter? | Alura',
        link: 'https://www.alura.com.br/artigos/flutter',
        snippet:
            'Flutter é um kit de desenvolvimento de interface de usuário de código aberto criado pelo Google. Ele é usado para desenvolver aplicativos para Android, iOS, Windows, Mac, Linux e web.',
      ),
      SearchResult(
        title: 'Documentação Oficial do Flutter',
        link: 'https://flutter.dev',
        snippet:
            'A documentação oficial para aprender a desenvolver com Flutter. Encontre tutoriais, exemplos e a referência completa da API.',
      ),
      SearchResult(
        title: 'O que é Python? A linguagem de programação',
        link: 'https://www.python.org',
        snippet:
            'Python é uma linguagem de programação de alto nível, interpretada, de script, imperativa, orientada a objetos, funcional, de tipagem dinâmica e forte.',
      ),
    ];
  }
}
