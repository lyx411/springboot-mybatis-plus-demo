# SpringBoot + MyBatis-Plus 示例项目

这是一个使用 SpringBoot 和 MyBatis-Plus 框架开发的示例项目，用于演示如何使用 MyBatis-Plus 进行数据库操作。

## 项目结构

```
springboot-mybatis-plus-demo
├── sql/                 # SQL 脚本
│   └── init.sql         # 数据库初始化脚本
├── src/                 # 源代码
│   ├── main/            # 主要代码
│   │   ├── java/        # Java 代码
│   │   └── resources/   # 资源文件
│   └── test/            # 测试代码
└── pom.xml              # Maven 配置文件
```

## 数据库表结构

该项目使用了以下三个表：

1. **t_user** - 用户表
   - id: INT (主键)
   - user_name: VARCHAR(50)
   - password: VARCHAR(50)
   - age: INT
   - birthday: DATE

2. **dept** - 部门表
   - d_id: INT (主键)
   - d_name: VARCHAR(50)

3. **t_employee** - 员工表
   - e_id: INT (主键)
   - username: VARCHAR(50)
   - password: VARCHAR(50)
   - phone: VARCHAR(20)
   - email: VARCHAR(50)
   - d_id: INT (外键，关联dept表的d_id字段)

## 快速开始

### 1. 创建数据库

执行 `sql/init.sql` 脚本创建数据库和表结构，并插入测试数据。

```bash
mysql -u root -p < sql/init.sql
```

### 2. 配置数据库连接

修改 `src/main/resources/application.yml` 文件中的数据库连接信息：

```yaml
spring:
  datasource:
    driver-class-name: com.mysql.cj.jdbc.Driver
    url: jdbc:mysql://localhost:3306/gb03?serverTimezone=UTC
    username: root
    password: 你的密码
```

### 3. 运行项目

使用Maven编译和运行项目：

```bash
mvn clean compile
mvn spring-boot:run
```

### 4. 执行测试

运行测试用例：

```bash
mvn test
```

## 注意事项

- 确保MySQL数据库已经启动并且可以访问
- 数据库用户需要有创建数据库和表的权限
- 测试前请确保数据库中表结构和测试数据已正确初始化