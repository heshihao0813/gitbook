# heshihao/gitbook

Docker container of gitbook-cli with plugins.

## Plugins Included

* [advanced-emoji](https://plugins.gitbook.com/plugin/advanced-emoji)
* [katex](https://plugins.gitbook.com/plugin/katex)
* [katex-plus](https://plugins.gitbook.com/plugin/katex-plus)
* [mathjax](https://plugins.gitbook.com/plugin/mathjax)
* [mermaid-gb3](https://plugins.gitbook.com/plugin/mathjax)
* [flowchart-full](https://plugins.gitbook.com/plugin/flowchart-full)
* [js-sequence-diagram-full](https://plugins.gitbook.com/plugin/js-sequence-diagram-full)

## Usage

### Direct Use

```shell
# serve
docker run --rm -v "$PWD:/docs" -p 4000:4000 heshihao/gitbook gitbook serve
# build
docker run --rm -v "$PWD:/docs" heshihao/gitbook gitbook build
# pdf
docker run --rm -v "$PWD:/docs" heshihao/gitbook gitbook pdf
```

### As GitLab Runner

Add the following to your `.gitlab-ci.yml`

```yaml
before_script:
  - ln -s /plugins/node_modules ${CI_PROJECT_DIR}/node_modules
```
