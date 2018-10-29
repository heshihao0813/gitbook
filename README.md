# heshihao/gitbook

Docker container of gitbook-cli with plugins.

## Plugins Included

* [katex](https://plugins.gitbook.com/plugin/katex)
* [mathjax](https://plugins.gitbook.com/plugin/mathjax)

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