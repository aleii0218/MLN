标识列:AUTO_INCREMENT
自增长列,不应手动插入,系统提供默认序列值

-- 创建表时设置标识列
CREATE TABLE 表(
	id INT PRIMARY KEY AUTO_INCREMENT
);

SHOW VARIABLE LIKE '%AUTO_INCREMENT%';
SET AUTO_INCREMENT_INCREMENT=N;

特点:
标识列不一定为主键，但必须为key
表中仅可有唯一标识列
标识列仅可为数值型

-- 创建表时设置标识列
添加：
ALTER TABLE 表名
MODIFY COLUMN 列 约束 标识;
删除:
ALTER TABLE 表名
MODIFY COLUMN 列 约束;