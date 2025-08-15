import 'package:flutter/material.dart' hide SearchController;
import 'package:provider/provider.dart';
import '../controller/search_controller.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  // Controlador para pegar o texto do campo de busca
  final _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pesquisador Inteligente'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // --- CAMPO DE BUSCA E BOTÃO ---
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _textController,
                    decoration: const InputDecoration(
                      hintText: 'Digite sua pesquisa...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    // Pega o controller (sem ouvir mudanças) e chama a função de busca
                    context.read<SearchController>().performSearch(
                      _textController.text,
                    );
                  },
                  style: IconButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(16),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // --- ÁREA DE RESULTADOS ---
            // O Consumer ouve as mudanças no SearchController e reconstrói o que está dentro
            Consumer<SearchController>(
              builder: (context, controller, child) {
                // Baseado no estado, decidimos o que mostrar na tela
                switch (controller.state) {
                  case SearchState.loading:
                    return const Center(child: CircularProgressIndicator());

                  case SearchState.error:
                    return Center(
                      child: Text(
                        controller.errorMessage,
                        style: const TextStyle(color: Colors.red),
                      ),
                    );

                  case SearchState.success:
                    if (controller.results.isEmpty) {
                      return const Center(
                        child: Text('Nenhum resultado encontrado.'),
                      );
                    }
                    // Se tivermos resultados, mostramos em uma lista
                    return Expanded(
                      child: ListView.builder(
                        itemCount: controller.results.length,
                        itemBuilder: (context, index) {
                          final result = controller.results[index];
                          return Card(
                            margin: const EdgeInsets.only(bottom: 16),
                            child: ListTile(
                              title: Text(result.title),
                              subtitle: Text(
                                result.snippet,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                              trailing: const Icon(Icons.arrow_forward),
                              onTap: () {
                                // Ação para quando clicar no card (vamos implementar depois)
                              },
                            ),
                          );
                        },
                      ),
                    );

                  case SearchState.idle:
                  default:
                    return const Center(
                      child: Text(
                        'Digite algo e clique em buscar para começar.',
                      ),
                    );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
