# NoTAFK

Ferramenta simples para Windows que movimenta o mouse continuamente em um pequeno círculo para evitar AFK (inatividade).

## Como usar

1. Execute o aplicativo na pasta `publish`.
2. O cursor começará a se mover em um pequeno círculo, sem abrir uma janela de console.
3. Clique com o botão esquerdo ou direito do mouse para encerrar. O cursor retorna à posição inicial.

## Projeto

Desenvolvido em C# com .NET 9, como aplicação Windows sem console (`WinExe`). A publicação fica na pasta `publish`, em executável único para Windows x64.

As pastas `bin` e `obj` são geradas durante a compilação. Elas e a pasta `publish` são ignoradas pelo Git.
