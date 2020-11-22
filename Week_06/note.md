学习笔记

# jAVA相关框架(3)



## Lambda

《java8 实践》

## Stream

java集合与泛型

stream 与 for的性能对比？

## Lombok



## Guava

集合[Collections] 

​	1 不可变集合: 用不变的集合进行防御性编程和性能提升。
​	2 新集合类型: multisets, multimaps, tables, bidirectional maps 等
​	3 强大的集合工具类: 提供java.util.Collections 中没有的集合工具
​	4 扩展工具类：让实现和扩展集合类变得更容易，比如创建Collection 的装饰器，或实现迭代器

缓存[Caches]

​	本地缓存实现，支持多种缓存过期策略

并发[Concurrency]

​	ListenableFuture：完成后触发回调的Future

字符串处理[Strings]

事件总线[EventBus]

反射[Reflection]



# 面向对象设计原则SOLID

1 SRP

2 OCP

3 LSP

4 ISP

5 DIP

# 编码规范、checkstyle

常见的编码规范：
1、Google 编码规范：https://google.github.io/styleguide/javaguide.html
2、Alibaba 编码规范：https://github.com/alibaba/p3c
3、VIP 规范：https://vipshop.github.io/vjtools/#/standard/

# 设计模式



# 单元测试

1. 单元测试方法应该每个方法是一个case，断言充分，提示明确
2. 单测要覆盖所有的corner case
3. 充分使用mock（一切皆可mock）
4. 如果发现不好测试，则说明业务代码设计存在问题，可以反向优化代码
5. 批量测试用例使用参数化单元测试
6. 注意测试是单线程执行
7. 合理使用before, after, setup 准备环境
8. 合理使用通用测试基类
9. 配合checkstyle，coverage 等工具

10. 制定单元测试覆盖率基线











