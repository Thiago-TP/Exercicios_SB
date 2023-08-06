# Exercícios de SB
Este repositório apresenta o código fonte e pdf de uma lista de exercícios de Software Básico.
Mais especificamente, a lista possui questões de provas antigas da disciplina CIC0104
conforme ensinada pelo professor Bruno Luiggi Macchiavello Espinoza, assim como sugestões de respostas.

## Arquivos do repositório
+ `Lista_de_Questões_SB.pdf`
  PDF da lista de questões.
+ `Lista_de_Respostas_SB.pdf`
  PDF da lista de respostas.
+ `Lista_de_Questões_SB.tex`
  Código fonte da lista de questões.
+ `Lista_de_Respostas_SB.tex`
  Código fonte da lista de respostas.
+ `preâmbulo.tex`
  Documento auxiliar chamado pelos códigos fonte.
  Define comandos úteis para a escrita deles,
  e ajusta a estética dos pdfs.
+ `/listings`
  Diretório com códigos assembly (x86 e inventado) dos enunciados e respostas.
+ `/questões`
  Diretório com as seções da lista de questões
+ `/respostas`
  Diretório com as seções da lista de respostas
+ `.ignore`
  Lista de arquivos auxiliares gerados durante a compilação do código fonte
  que devem ser desconsiderados pelo git.

## Instruções para compilação local
Baixe ou clone o repositório, extraia-o, e execute no terminal o comando
```
pdflatex -shell-escape Lista_de_Questões_SB.tex
```
para compilar a lista de questões ou
```
pdflatex -shell-escape Lista_de_Respostas_SB.tex
```
para compilar a lista de respostas.
Esse comando criará alguns arquivos auxiliares não mostrados no repositório 
(`.aux`, `.log`, `/_minted-xxx`, etc.),
e irá sobrescrever 
`Lista_de_Questões_SB.pdf` ou `Lista_de_Respostas_SB.pdf`,
conforme o desejado. 
> Obs.: os comandos acima assumem sistema operacional Linux. 

## Anatomia das listas
É dedicada uma lista para as respostas e uma para as questões,
cujos pdfs são gerados na compilação de 
`Listas_de_Respostas_SB.tex` e
`Listas_de_Questões_SB.tex`, respectivamente.

Cada lista está dividida em dois módulos,
o primeiro referente às aulas de compiladores, assembly inventado e etc.,
e o segundo, às aulas de assembly x86-64.

Por sua vez, cada um dos módulos é dividido em duas seções,
uma para os exercícios teóricos e a outra para os práticos.

Ao todo, cada seção da lista de respostas corresponde a um `.tex`
na pasta `respostas`, enquanto que
cada seção da lista de questões corresponde a um `.tex`
na pasta `questões`.

Quando é necessário imprimir código sobre o pdf de alguma lista,
escreva o comando 
+ `\putC{name}`, se o arquivo `name` for programa em C
+ `\putNASM{name}`, se o arquivo `name` for programa em nasm
+ `\putDUMP{name}`, se o arquivo `name` for um objdump/texto puro

Para que isso funcione, `name` deve ser o 
path de um arquivo dentro da pasta `listings`.
Em particular, códigos das respostas estão na pasta
`listings/respostas/`.

