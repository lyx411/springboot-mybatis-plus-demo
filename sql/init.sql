-- 创建数据库
CREATE DATABASE IF NOT EXISTS gb03 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

USE gb03;

-- 创建用户表
CREATE TABLE IF NOT EXISTS t_user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    age INT,
    birthday DATE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 创建部门表
CREATE TABLE IF NOT EXISTS dept (
    d_id INT AUTO_INCREMENT PRIMARY KEY,
    d_name VARCHAR(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 创建员工表
CREATE TABLE IF NOT EXISTS t_employee (
    e_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(50),
    d_id INT,
    FOREIGN KEY (d_id) REFERENCES dept(d_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 插入测试数据：部门
INSERT INTO dept (d_name) VALUES 
('研发部'),
('市场部'),
('销售部'),
('人事部');

-- 插入测试数据：员工
INSERT INTO t_employee (username, password, phone, email, d_id) VALUES 
('张三', '123456', '13800138001', 'zhangsan@example.com', 1),
('李四', '123456', '13800138002', 'lisi@example.com', 1),
('王五', '123456', '13800138003', 'wangwu@example.com', 2),
('赵六', '123456', '13800138004', 'zhaoliu@example.com', 3);

-- 插入测试数据：用户
INSERT INTO t_user (user_name, password, age, birthday) VALUES 
('admin', 'admin123', 30, '1990-01-01'),
('user1', 'pass123', 25, '1995-05-15'),
('user2', 'pass456', 28, '1993-11-23'),
('test1', 'test123', 22, '1998-07-30'),
('test2', 'test456', 35, '1985-03-12');