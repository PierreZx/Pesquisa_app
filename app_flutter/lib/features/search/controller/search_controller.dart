import 'package:flutter/material.dart';
import '../../../core/models/search_result_model.dart';
import '../../../core/services/api_service.dart';

// Enum para controlar os diferentes estados da nossa tela
enum SearchState {
  idle, // Estado inicial, nada aconteceu
  loading, // Carregando, esperando a API
  success, // Sucesso, resultados recebidos
  error, // Erro, algo deu errado
}

// O Controller usa o "ChangeNotifier" para avisar a tela quando algo mudar.
class SearchController extends ChangeNotifier {
  final ApiService _apiService = ApiService();

  // Variáveis de estado
  SearchState _state = SearchState.idle;
  List<SearchResult> _results = [];
  String _errorMessage = '';

  // "Getters" para que a tela possa ler os dados, mas não modificá-los diretamente
  SearchState get state => _state;
  List<SearchResult> get results => _results;
  String get errorMessage => _errorMessage;

  // A função principal que a tela vai chamar quando o botão de busca for clicado
  Future<void> performSearch(String query) async {
    // 1. Muda o estado para "loading" e notifica a tela para mostrar um spinner
    _state = SearchState.loading;
    notifyListeners();

    try {
      // 2. Chama o nosso serviço (que por enquanto é fake)
      final searchResults = await _apiService.search(query);
      _results = searchResults;

      // 3. Muda o estado para "success" e notifica a tela para mostrar os resultados
      _state = SearchState.success;
      notifyListeners();
    } catch (e) {
      // 4. Se der erro, guarda a mensagem e notifica a tela
      _errorMessage = 'Ocorreu um erro ao buscar: $e';
      _state = SearchState.error;
      notifyListeners();
    }
  }
}
