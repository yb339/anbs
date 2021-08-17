任务实现的简单邮件定时发送功能并支持gif模板编辑
如果这个项目对有帮助，感谢点亮你的星星~

1. 介绍
相比较于原译，主要如下修改：

添加数据库脚本（数据库目录下）
调整数据库列名（PaperMapper.xml中）
修改了几处BUG（JS​​P页面中）
2.环境
开发环境：

想法 2018
数据库：MySQL 8.0
雄猫 8.5.31
推荐环境：

想法 2018+
MySQL 5.6/5.7/8.0
雄猫 8.0+
三、注意事项
数据库：
可知jdbc.properties 文件中的提示，选择合适的数据库驱动驱动。

# MySQL 5.X 
jdbc.driver =com.mysql.jdbc.Driver
 # MySQL 8.X 
jdbc.driver =com.mysql.cj.jdbc.Driver
数据库为推荐环境中的低版本MySQL，一般不需要修改POM文件。

如果 MySQL 版本的主题，建议参考https://mvnrepository.com/artifact/mysql/mysql-connector-java进行修改。

4. 许可证
麻省理工学院