数值型:整数       :tinyint smallint mediumint int(integer) bigint
       小数 定点数:dec decimal
            浮点数:float double
字符型:较短的文本 :char、varchar
       较长的文本 :text、blob(较大的二进制)
日期型:


-- 整型
TINYINT       1     0~255
SMALLINT      2     0~65535
MEDIUMINT     3     0~1677215
INT(INTEGER)  4     0~4294967295
BIGINT        8     0~
特点:
()可以设置零填充搭配 ZEROFILL  但并未设置范围

-- 浮点型
FLOAT(M,D)    4
DOUBLE(M,D)   8
 
-- 定点型(精度高) 
DEC(M,D)
DECIMAL(M,D) 有默认精度(10,0)
说明:
M-位数 D-小数位数

-- 字符型
CHAR(M1)    效率高
VARCHAR(M2) 空间节省
TEXT
BLOB        较大的二进制
BINARY      较短二进制
VARBINARY
说明:
M1、M2-最多的字符数
M1不可变 M2可变

-- 枚举型
ENUM(类型1,类型2,···) 保存枚举
SET(类型1,类型2,···)  保存集合
例1:
CREATE TABLE table1(
	col1 SET('a','b','c','d')
);
INSERT INTO table1 VALUES('a');
INSERT INTO table1 VALUES('a','b');

-- 日期型
DATE       4
TIME       3
YEAR       1
DATETIME   8    1000-9999
TIMESTAMP  4    1970-2038  受时间影响 



