#  Pesquisa + | Pesquisador Inteligente 🚀

![Status do Projeto](https://img.shields.io/badge/status-em%20desenvolvimento-yellow)
![Linguagem Principal](https://img.shields.io/badge/linguagem-Dart-blue?logo=dart)
![Framework](https://img.shields.io/badge/framework-Flutter-blue?logo=flutter)

### Um assistente de pesquisa que automatiza a coleta e organização de informações para otimizar seus estudos e trabalhos.

---

## 🎯 Visão Geral do Projeto

Pesquisa + é um aplicativo mobile projetado para transformar a maneira como realizamos pesquisas online. Com apenas algumas palavras-chave, o aplicativo realiza uma busca profunda na web, selecionando de forma inteligente os conteúdos mais relevantes — incluindo artigos, imagens e vídeos — e os compila em um formato coeso e fácil de usar.

O objetivo é eliminar o trabalho manual de abrir inúmeras abas e consolidar informações, permitindo que estudantes e profissionais foquem no que realmente importa: o aprendizado e a criação de conteúdo de qualidade.

![GIF do App em Ação](https://placehold.co/600x400/1e1e1e/ffffff?text=Adicione+um+GIF+do+seu+app+aqui)
*(Em breve, adicionarei um GIF demonstrando o fluxo do app)*

---

## ✨ Funcionalidades Principais

Atualmente, o projeto conta com as seguintes funcionalidades e planos:

* **🔍 Pesquisa Inteligente:** Insira um termo e deixe o app buscar os melhores resultados para você.
* **📄 Geração de Documentos:** Exporte toda a pesquisa consolidada para um arquivo `.docx` (Word), já formatado e com imagens, pronto para ser usado em seus trabalhos.
* **📱 Interface Limpa e Intuitiva:** Uma experiência de usuário fluida, construída com Flutter.

### 🗺️ Roadmap (Próximos Passos)

* **🗣️ Pesquisa por Voz:** Implementar um sistema de reconhecimento de voz para facilitar ainda mais a entrada de pesquisas.
* **🖼️ Galeria de Mídia:** Uma seção dedicada para visualizar e selecionar as imagens e vídeos mais relevantes encontrados.
* **⭐ Sistema de Favoritos:** Salve suas pesquisas favoritas para acessá-las mais tarde.
* **☁️ Sincronização na Nuvem:** Salve suas pesquisas e documentos em um serviço de nuvem para acesso em múltiplos dispositivos.

---

## 🛠️ Tecnologias Utilizadas

Este projeto é dividido em duas partes principais: o aplicativo mobile e o serviço de backend.

* **Frontend (Mobile):**
    * [**Flutter**](https://flutter.dev/): Framework para a construção da interface de usuário multiplataforma.
    * [**Dart**](https://dart.dev/): Linguagem de programação principal do app.
    * [**Provider**](https://pub.dev/packages/provider): Para gerenciamento de estado.

* **Backend (API):**
    * [**Python**](https://www.python.org/): Linguagem para a criação da API que realiza o web scraping.
    * [**Flask/FastAPI**](https://flask.palletsprojects.com/): Framework web para servir os dados ao aplicativo.
    * [**BeautifulSoup/Scrapy**](https://www.crummy.com/software/BeautifulSoup/): Bibliotecas para a extração de dados das páginas web.

---

## 🚀 Como Executar o Projeto

Para rodar o aplicativo em sua máquina, siga os passos abaixo:

1.  **Clone o repositório:**
    ```bash
    git clone [https://github.com/seu-usuario/seu-repositorio.git](https://github.com/seu-usuario/seu-repositorio.git)
    ```

2.  **Navegue até a pasta do projeto Flutter:**
    ```bash
    cd seu-repositorio/app_flutter
    ```

3.  **Instale as dependências:**
    ```bash
    flutter pub get
    ```

4.  **Execute o aplicativo:**
    ```bash
    flutter run
    ```
    *(Lembre-se que o backend em Python precisa estar rodando para que as buscas funcionem de verdade).*

---
