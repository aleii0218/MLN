约束意义:
保证表中数据准确和可靠

六大约束:
NOT NULL   :非空,姓名学号等
DEFAULT    :默认,性别等
PRIMARY KEY:主键,保证该字段唯一性并非空,员工编号等
UNIQUE     :唯一,可为空,座位号
CHECK      :检查约束,性别为男或女,年龄在范围内等
FOREIGN KEY:外键,限制两表关系,字段来自于主表约束,员工表单工种编号等

添加约束时机:
创建表时和修改表时

约束分类:
列级约束:都支持,但外键没效果
表级约束:除非空默认都支持

-- 创建表时添加约束
CREATE TABLE 表名(
	id INT PRIMARY KEY,
	字段1 VARCHAR(20) NOT NULL,
	字段2 CHAR(1) CHECK(字段2=条件1 OR 字段2=条件2),
	字段3 INT UNIQUE,
	字段4 INT DEFAULT 条件3
	主表_id INT REFERENCES 主表(id) 无作用
);
主键外键唯一均可生成索引

CREATE TABLE 表名(
	id INT,
	字段1 VARCHAR(20),
	字段2 CHAR(1),
	字段3 INT,
	字段4 INT
	主表_id,
	
	[CONSTRAINTS 约束名] PRIMARY KEY(id,···),
	CONSTRAINTS 约束名 UNIQUE(字段3),
	CONSTRAINTS 约束名 CHECK(字段2=条件1 OR 字段2=条件2),
	CONSTRAINTS 约束名 FOREIGN KEY(主表_id) REFERENCES 主表(id)
);

SHOW INDEX FROM 表名;
fk_表名_主表名

-- 性质
两个字段可组合成一个主键或者唯一(不推荐)
两表关联从表设置外键
关联字段类型一致
主表关联列必为主键或唯一键
插入数据应先插主表在插从表

-- 修改表时添加约束
添加约束
列级:
ALTER TABLE 表名 
MODIFY COLUMN 字段名 类型 添加的约束;
表级:
ALTER TABLE 表名
ADD 约束(字段);

删除约束
非空默认:
ALTER TABLE 表名
MODIFY COLUMN 字段名 类型;
主键唯一
ALTER TABLE 表名
DROP 约束 字段名; 
外键
ALTER TABLE 表名
DROP FOREIGN KEY 外键约束名;



