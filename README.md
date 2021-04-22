## Spring DevTools 配置
感谢[emf1002](https://github.com/emf1002)提供的解决方案。

在使用 DevTools 时，通用Mapper经常会出现 class x.x.A cannot be cast to x.x.A。

同一个类如果使用了不同的类加载器，就会产生这样的错误，所以解决方案就是让通用Mapper和实体类使用相同的类加载器即可。

DevTools 默认会对 IDE 中引入的所有项目使用 restart 类加载器，对于引入的 jar 包使用 base 类加载器，因此只要保证通用Mapper的jar包使用 restart
类加载器即可。

在 `src/main/resources` 中创建 META-INF 目录，在此目录下添加 spring-devtools.properties 配置，内容如下：
```properties
restart.include.hifi=/hifi-[\\w-\\.\\d]+.jar
restart.include.mybatis=/mybatis-[\\w-\\.\\d]+.jar
restart.include.mapper=/mapper-[\\w-\\.\\d]+jar
restart.include.pagehelper=/pagehelper-[\\w-\\.\\d]+jar
```
使用这个配置后，就会使用 restart 类加载加载 include 进去的 jar 包。


# void info(String var1, Object var2);
slf4j有一个common logger没有的功能，字符串中的{}会被替换
  log.info("Hello {}","world"); ==> Hello world

# 分页查询

  @Test
    public  void findByPageHelper(){
        //slf4j有一个common logger没有的功能，字符串中的{}会被替换
        log.info("Hello {}","world");
        PageInfo<Emp> pageInfo=PageHelper.startPage(1,10).setOrderBy(" id asc").doSelectPageInfo(()->userMapper.selectAll());
        log.info(pageInfo.toString());
        log.info("[lambda写法] - [分页信息] - [{}]", pageInfo.toString());
        PageHelper.startPage(1,10).setOrderBy("id asc");
        PageInfo<Emp> userPageInfo = new PageInfo<>(this.userMapper.selectAll());
        log.info("[普通写法] - [{}]", userPageInfo);
        log.info(userPageInfo.toString());
    }
# insertSelective 和insert的区别
insertSelective--选择性保存数据；
而insert则是不论你设置多少个字段，统一都要添加一遍，不论你设置几个字段，即使是一个。(没有赋值的时候都会把null插入字段里面去) 


# 路径配置
 由于 mybatis.mapper-locations=classpath:com/xiaobu/mapper/*.xml配置的在java package中，
 而Spring Boot默认只打入java package -> *.java，所以我们需要给pom.xml文件添加如下内容

```
 <resources>
            <resource>
                <directory>src/main/resources</directory>
            </resource>
            <resource>
                <directory>src/main/java</directory>
                <includes>
                    <include>**/*.xml</include>
                </includes>
                <filtering>true</filtering>
            </resource>
        </resources>
```


## 使用redis实现分布式锁


  
  
  
## myabtis ${}和#{}的区别

> 1、#{}是预编译处理，MyBatis在处理#{ }时，它会将sql中的#{ }替换为？，然后调用PreparedStatement的set方法来赋值，传入字符串后，会在值两边加上单引号，如上面的值 “4,44,514”就会变成“ '4,44,514' ”；

>2、${}是字符串替换，在处理{ }是字符串替换， MyBatis在处理{ }时,它会将sql中的${ }替换为变量的值，传入的数据不会加两边加上单引号。

>注意：使用${ }会导致sql注入，不利于系统的安全性！SQL注入：就是通过把SQL命令插入到Web表单提交或输入域名或页面请求的查询字符串，最终达到欺骗服务器执行恶意的SQL命令。常见的有匿名登录（在登录框输入恶意的字符串）、借助异常获取数据库信息等  

