# awscli-hugo-docker
This image, based on the official [amazon/aws-cli](https://hub.docker.com/r/amazon/aws-cli) image, ships the [Hugo](https://gohugo.io) binary.

The Dockerfile in this repository is automatically built by Docker Hub, publicly available at https://hub.docker.com/r/birkhofflee/awscli-hugo.

Suitable for CI pipeline use, GitLab CI for example:

```yaml
stages:
  - build-and-deploy

build-and-deploy:
  stage: build-and-deploy
  only:
    - master
  image: birkhofflee/awscli-hugo:latest
  script:
    - hugo --minify
    - hugo deploy
```

For AWS authentications, refer to the following:

* https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-envvars.html
* https://docs.gitlab.com/ee/ci/cloud_deployment/#run-aws-commands-from-gitlab-cicd

# Contributing
PR is always welcome to improve this project.

# License
Copyright 2021 Birkhoff Lee

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
