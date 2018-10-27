# heshihao/gitbook

Docker container of gitbook-cli with plugins.

## Plugins Included

* [katex](https://plugins.gitbook.com/plugin/katex)
* [mathjax](https://plugins.gitbook.com/plugin/mathjax)

## Usage

```shell
# serve
docker run --rm -v "$PWD:/docs" -p 4000:4000 heshihao/gitbook gitbook serve
# build
docker run --rm -v "$PWD:/docs" heshihao/gitbook gitbook build
# pdf
docker run --rm -v "$PWD:/docs" heshihao/gitbook gitbook pdf . /docs/book.pdf
```