# Slides da disciplina Matemática Elementar
Este repositório mantém o código fonte dos slides utilizados em sala de aula pelo Professor Antonio Igor na disciplina Matemática Elementar do Bacharelado em Tecnologia da Informação da Universidade Federal do Rio Grande do Norte.

## Compilação
É necessário que alguma distribuição TeX (como o pacote [TexLive](https://tug.org/texlive/)) e o utilitário [GNU Make](https://www.gnu.org/software/make/) estejam instalados em sua máquina.

Após clonar o repositório, entre no diretório em algum shell e execute o comando abaixo para produzir o documento em formato pdf.

```sh
make slides aula=<capítulo>
```

Onde `<capítulo>` deve ser substituído por um identificador de capítulo. Os identificadores são o nome de seu capítulo correspondente onde os espaços são trocados por hífens (`-`), todas as letras são minúsculas e sem acentuação.

Por exemplo, caso queira compilar os slides do capítulo de Funções Trigonométricas é necessário executar o comando:

```sh
make slides aula=funcoes-trigonometricas
```

Dessa forma, será criada uma pasta `pdf/` onde os slides em formato PDF e os arquivos auxiliares para sua compilação serão armazenados.

> O comando também executa o leitor de PDF padrão em seu computador para abrir os slides logo após serem compilados.

## Autores
- Prof. Antonio Igor Silva de Oliveira ([@tonhaunm](https://github.com/tonhaunm))
- Josenaldo Araújo da Silva ([@jjosenaldo](https://github.com/jjosenaldo))
- Giordano Vicente ([@giordanorn](https://github.com/giordanorn))
