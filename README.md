# Exercícios de SB
Este repositório apresenta o código fonte e pdf de uma lista de exercícios de Software Básico.
Mais especificamente, a lista possui questões de provas antigas da disciplina CIC0104
conforme ensinada pelo professor Bruno Luiggi Macchiavello Espinoza, assim como sugestões de respostas.

## Arquivos do repositório
+ `Exercicios_SB.pdf`
  PDF da lista.
+ `Exercicios_SB.tex`
  Código fonte da lista.
+ `/listings`
  Diretório com códigos assembly (x86 e inventado) dos enunciados e respostas.
+ `.ignore`
  Lista de arquivos auxiliares gerados durante a compilação do código fonte
  que devem ser desconsiderados pelo git.

## Instruções para compilação local
Baixe ou clone o repositório, extraia-o, e execute no terminal o comando
```
pdflatex -shell-escape Exercicios_SB.tex
```
Esse comando criará alguns arquivos auxiliares não mostrados no repositório 
(`.aux`, `.log`, `/_minted-Exercicios_SB`, etc.),
e irá sobrescrever `Exercicios_SB.pdf`. 
O novo pdf pode ser visto através do comando
```
open Exercicios_SB.pdf
```
> Obs.: os comandos acima assumem sistema operacional Linux. 

## Anatomia da lista
A lista está separada em duas partes, enunciados e respostas, nessa ordem.
