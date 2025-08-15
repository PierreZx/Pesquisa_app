// Define a estrutura de um único resultado da pesquisa.
// Ter um "modelo" assim ajuda a organizar os dados e evitar erros de digitação.
class SearchResult {
  final String title;
  final String link;
  final String snippet;

  SearchResult({
    required this.title,
    required this.link,
    required this.snippet,
  });
}
