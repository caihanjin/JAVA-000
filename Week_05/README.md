学习笔记

# Sping 2

1.从Spring 到Spring Boot

2.Spring Boot 核心原理*

3.Spring Boot Starter 详解*

4.JDBC 与数据库连接池*

5.ORM-Hibernate/MyBatis*

6.Spring 集成ORM/JPA*

7.Spring Boot 集成ORM/JPA

8.第10 课总结回顾与作业实践 



## 1 什么是Spring Boot
Spring Boot 使创建独立运行、生产级别的Spring 应用变得容易，你可以直接运行它。
我们对Spring 平台和第三方库采用限定性视角，以此让大家能在最小的成本下上手。
大部分Spring Boot 应用仅仅需要最少量的配置。
功能特性

1. 创建独立运行的Spring 应用
2. 直接嵌入Tomcat 或Jetty，Undertow，无需部署WAR 包
3. 提供限定性的starter 依赖简化配置（就是脚手架）
4. 在必要时自动化配置Spring 和其他三方依赖库
5. 提供生产production-ready 特性，例如指标度量，健康检查，外部配置等
6. 完全零代码生产和不需要XML 配置

## 2.Spring Boot 核心原理*



1、自动化配置：简化配置核心
基于Configuration，EnableXX，Condition

2、spring-boot-starter：脚手架核心
整合各种第三方类库，协同工具



application.yaml -> configuration->bean

前缀 - > 一组配置 -> starter组件



**Spring boot** 约定大于配置

一、Maven 的目录结构：默认有resources 文件夹存放配置文件。默认打包方式为jar。
二、默认的配置文件：application.properties 或application.yml 文件
三、默认通过spring.profiles.active 属性来决定运行环境时的配置文件。
四、EnableAutoConfiguration 默认对于依赖的starter 进行自动装载。
五、spring-boot-start-web 中默认包含spring-mvc 相关依赖以及内置的web容器，使得
构建一个web 应用更加简单。



## 3 Spring Boot Starter详解*



如何自定义一个 starter?



# JDBC

JDBC 定义了数据库交互接口：
DriverManager
Connection
Statement
ResultSet
后来又加了DataSource--Pool

## Hibernate 

ORM（Object-Relational Mapping） 表示对象关系映射。
Hibernate 是一个开源的对象关系映射框架，它对JDBC 进行了非常轻量级的对象封装，它将POJO 与
数据库表建立映射关系，是一个全自动的orm 框架，hibernate 可以自动生成SQL 语句，自动执行，
使得Java 程序员可以使用面向对象的思维来操纵数据库。

Hibernate 里需要定义实体类和hbm 映射关系文件（IDE 一般有工具生成）。

Hibernate 里可以使用HQL、Criteria、Native SQL 三种方式操作数据库。

HQL

```sql
mysql: select f_name from t_order;
hibernate: select fName from com.xxx.order o;
映射关系配置文件 order.hbm.xml
```

Native SQL

```java
createSQLQuery("select f_name from t_order")
```



## MyBatis



## JPA

Java Persistence API



## Spring JDBC 与ORM





JDBC <- DataSource Spring JDBC
JPA  <- EntityManager Spring ORM
Spring Data with NoSQL 

## Spring/Spring Boot 使用ORM 的经验

1、本地事务（事务的设计与坑）
2、多数据源（配置、静态制定、动态切换）
3、数据库连接池配置（大小、重连、超时）

```
几十个
配置重连，配置心跳，超时
```



4、ORM 内的复杂SQL，级联查询

```
避免复杂查询
```



5、ORM 辅助工具和插件



# 总结

Spring Boot

HIbernate

Mybatis

Spring+ORM





