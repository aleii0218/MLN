
-- 库的创建
CREATE DATABASE 库名;
CREATE DATABASE IF NOT EXISTS 库名;

-- 库的修改
--- 以前修改库名方式(数据容易丢失)
RENAME DATABASE 库名 TO 新库名;
--- 更改库的字符集
ALTER DATABASE 库名 
CHARACTER SET 字符集;

-- 库的删除
DROP DATABASE IF EXISTS 库名;



-- 表的创建
CREATE TABLE 表名(
	列名 列类型[约束(长度)],
	列名 列类型[约束(长度)],
	列名 列类型[约束(长度)],
	列名 列类型[约束(长度)]
);
-- 查看表是否存在
DESC 表名;

-- 表的修改
--- 修改列名
ALTER TABLE 表名 
CHANGE COLUMN 字段名 新字段名 字段类型;
--- 修改列类型
ALTER TABLE 表名 
MODIFY COLUMN 字段名 修改后字段类型;
--- 添加新列
ALTER TABLE 表名 
ADD COLUMN 字段名 字段类型
FIRST | AFTER 字段名;
--- 删除新列
ALTER TABLE 表名 
DROP COLUMN 字段名;
--- 修改表名
ALTER TABLE 表名 
RENAME TO 新表名;

-- 表的删除
DROP TABLE IF EXISTS 表名;

-- 表的复制
--- 仅复制表的结构
CREATE TABLE 表名 LIKE 被复制表名;
--- 复制表的结构+数据
CREATE TABLE 表名
SELECT * FROM 被复制表名;
--- 复制部分数据
CREATE TABLE 表名
SELECT 字段1,字段2
FROM 被复制表名
WHERE 筛选条件;