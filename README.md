记忆花园
==

## 依赖
- Git
- JDK
- Maven
- MySQL
## 阿里云Linux安装步骤
- yum upstate
- yum install git
- mkdir App
- cd App
- git clone -b code git://github.com/Web-Project-Task-XD-2021/Web-Project
- yum install maven
- mvn -v
- mvn clean compile package
- java -jar memorygarden-0.0.1-SNAPSHOT.jar
###### java进程查看
- ps -axu | grep java
## 部署后脱机运行项目
- yum install coreutils
- vi ~/.bash_profile 
###### 进入此文件后，在PATH=$PATH:$HOME/bin添加:/usr/bin
- source ~/.bash_profile 
- touch memorygarden.sh
- vi memorygarden.sh
###### 编辑创建的脚本文件 内容为"# !/bin/sh nohup java -jar -Dspring.profiles.active=production target/memorygarden-0.0.1-SNAPSHOT.jar &"
###### 执行脚本文件 
- sh bili.sh

## 资料
[Bootstrap 文档](https://v3.bootcss.com/getting-started/)

[Spring web](https://spring.io/guides/gs/serving-web-content/)

[Github OAuth](https://docs.github.com/en/developers/apps/building-oauth-apps)

[Spring boot Mybatis](http://mybatis.org/spring-boot-starter/mybatis-spring-boot-autoconfigure/)

[Spring 官方文档](https://docs.spring.io/spring-boot/docs/2.0.0.RC1/reference/htmlsingle/)

[Thymeleaf](https://www.thymeleaf.org/doc/tutorials/3.0/usingthymeleaf.html)

[Mybatis Generator](https://mybatis.org/generator/)

[Postman](chrome-extension://coohjcphdfgbiolnekdpbcijmhambjff/index.html)

[配色](https://webgradients.com/)

[js时间格式化](http://momentjs.cn/)

[Markdown](http://editor.md.ipandao.com/)

[阿里云](https://homenew.console.aliyun.com/home/dashboard/securitycenter)

## 工具
[Git](https://git-scm.com/download)

[Visual Paradigm](https://www.visual-paradigm.com)

[LOMBOK](https://projectlombok.org/)

[Flyway](https://flywaydb.org/)

[Postman](chrome-extension://coohjcphdfgbiolnekdpbcijmhambjff/index.html)

## 数据库迁移脚本（flyway）
### 使用flyway对数据库管理，建表语句在resource文件夹下的migration中，执行下面的脚本自动建表、自动生成mapper映射
```bash
mvn flyway:clean
mvn flyway:migrate
mvn -Dmybatis.generator.overwrite=true mybatis-generator:generate
```
## mysql
- 设置mysql server 字符集为utf8，否则插入的数据会显示问号乱码。
