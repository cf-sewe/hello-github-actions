# Hello GitHub actions

## CI/CD with Github actions V2 (August 2019)

[Since August 8th 2019 GitHub Actions includes built-in CI/CD](https://twitter.com/github/status/1159511691480260608). Version 2 of this repository is doing the same CI/CD workflow as with version 1 <sup>[1](https://www.lotharschulz.info/2019/05/09/ci-cd-with-github-actions/), [2](https://twitter.com/lothar_schulz/status/1159513737142898689), [3](https://www.linkedin.com/posts/lotharschulz_github-actions-now-with-built-in-cicd-happily-activity-6565279455458152448-ECh1) </sup>


## CI/CD with Github actions V1 (May 2019)

[GitHub actions](https://github.com/features/actions) Playground. 

This repository contains one action that
- builds a go binary
- tests the go code
- benchmarks the go code
- builds a docker image
- logs in to docker hub
- pushes the created docker image to dockerhub
- adds a [shaking finger](https://github.com/jessfraz/shaking-finger-action#usage) to a pull request in case an [action](https://developer.github.com/actions/creating-github-actions/creating-a-new-action/) fails


![build, test, benchmark, docker build/push & shaking finger](build_test_benchmark_docker_build_push_and_shaking_finger.png) 

All that is mainly defined in _[main.workflow](github/main.workflow) file_.

## Blog Post

**[CI/CD with GitHub Actions](https://www.lotharschulz.info/2019/05/09/ci-cd-with-github-actions/)**

## make file targets

### build
```
make build
```

### test
```
make test
make benchmark
```

### run
```
make run
```

### build docker image
```
make build.docker
```

### clean
```
make clean
```
