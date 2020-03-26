#### ㅡ Safe Food Information Website

![version](https://img.shields.io/badge/version-0.0.1-orange?)
![spring](https://img.shields.io/badge/spring-4.3.4-green?logo=spring)
![vue.js](https://img.shields.io/badge/vue.js-vue_cli_3-yellow?logo=vue.js)
![d3.js](https://img.shields.io/badge/d3.js-5.15.0-orange?logo=d3.js)
![mybatis](https://img.shields.io/badge/mybatis-3-red?logo=)
![mysql](https://img.shields.io/badge/mysql-8.0-blue?logo=mysql)



## Table of Contents

- [Introduction](#introduction)
- [Prerequisite](#prerequisite)
- [Development](#development)
  - [Testing](#testing)
  - [Commit](#commit)
  - [Role](#role)
- [Design](#design)
- [License](#license)
- [About](#about)

## Introduction

회원은 홈페이지에서 제공되고 있는 음식을 식단에 추가, 삭제가 가능함으로써 영양정보를 관리를 할 수 있습니다. 

특히, 음식에는 먹거리 재료, 성분을 공개할 뿐만 아니라 알러지 정보까지 시각적으로 잘 보여 주고 있어서 회원이 음식을 선택할 때 유용합니다. 

그외, 회원가입, 비밀번호 찾기, 공지사항, qna 기본기능을 구현하였고 검색 기능 과 검색어 순위를 제공하고 있습니다.

```
Safe Food Information
|-- src
|     `-- main
|           `-- java
|                 `-- Controller
|                 `-- DAO
|                 `-- Service
|           `-- resources
|
 ``
```

## Prerequisite

Must run in the spring framework.

- [spring_framework](https://spring.io/projects/spring-framework): Develop using spring boot.

## Development

### Commit

We are following [Angular's commitizen rules](https://github.com/angular/angular.js/blob/master/DEVELOPERS.md#-git-commit-guidelines) for formatting git commit message. This allows you to read messages that are easy to understand when looking for project history. It also uses the git commit message to generate our [CHANGELOG](/CHANGELOG.md) file.

```bash
$ npm install -g git-cz
$ git add .
$ git git-cz
$ git push
```

### Role

Spring boot 에 pagination 처리, member CRUD API, Vue.js 아용 게시판 구현, 검색어 순위 기능 제공

## Design

class 관계도

![테이블구조도(ERD)](./images/테이블구조도(ERD).PNG)

## Result



![상단NAVbar및이미지](./images/상단NAVbar및이미지.PNG)

<center>상단 nav bar 고정 및 메인화면 및 footer</center>

![상단navbar고정및메인화면및footer](./images/상단navbar고정및메인화면및footer.PNG)

<center>로그인 및 회원가입 및 아이디비밀번호찾기</center>

![로그인및회원가입및아이디비밀번호찾기](./images/로그인및회원가입및아이디비밀번호찾기.PNG)

<center>페이지형식의 상품목록페이지 및 추가버튼</center>



![페이지형식의상품목록페이지및추가버튼](./images/페이지형식의상품목록페이지및추가버튼.PNG)

<center>식품 상세 정보 페이지</center>



![식품상세정보페이지](./images/식품상세정보페이지.PNG)

<center>내 식단 페이지</center>



![내식단페이지](./images/내식단페이지.PNG)

<center>공지사항 페이지</center>

![공지사항페이지](./images/공지사항페이지.PNG)

<center>Q&A페이지</center>



![Q&A페이지](./images/Q&A페이지.PNG)

<center>검색버튼을 통한 검색창 및 검색 순위</center>

![검색버튼을통한검색창및검색순위](./images/검색버튼을통한검색창및검색순위.PNG)


## Video

[![Video Label](http://img.youtube.com/vi/T2uOkh1bpcg/0.jpg)](https://www.youtube.com/watch?v=T2uOkh1bpcg)

<center>위 img 클릭 시 영상으로 넘어갑니다. 😀</center>

## license

MIT License

## About

Authored and maintained by **minho**