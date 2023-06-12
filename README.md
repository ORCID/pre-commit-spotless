# pre-commit-spotless

pre-commit hook for https://pre-commit.com/ to run spotless via maven (https://github.com/diffplug/spotless/tree/main/plugin-maven)

## usage

In your .pre-commit-config.yaml in your project use:-

```
...
  - repo: https://github.com/ORCID/pre-commit-spotless
    rev: v1.0.0
    hooks:
      - id: spotless-check
        #types_or: [java, xml]
        types_or: [xml]
      - id: spotless-apply
        #types_or: [java, xml]
        types_or: [xml]
...
```
and include a spotless.xml pom file to configure spotless. See spotless.xml.example

## dependencies

mvn and java need to be installed. Asdf can be used for this. See .tool-versions for an example config
