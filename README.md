# 数据库系统实现总结报告

## 小组成员

古翔远-20231006，李硕-20377241，杜俊贤-20375183

## 具体贡献以及百分比

古翔远：前端页面设计和优化，包括主页、关于我们页、商城页、求购商城页等，以及前后端的对接，答辩PPT的设计，总结报告的汇总。**总贡献40%**

李硕：前端页面设计和优化，包括登录和注册页、个人信息页、购物车页、用户发布（求购）商品页等，以及前后端的对接，总结报告的撰写.**总贡献30%**

杜俊贤：后端数据库的设计和代码编写，包括表格创建、数据库设计、数据的生成和处理、权限和安全性设计等,以及总结报告的撰写.**总贡献30%**

## 一、实现环境

本项目使用了前后端分离的开发策略，具体的环境配置与框架使用如下：

#### 前端技术栈：

* SpringMVC
* Mybatis
* thymeleaf

#### 后端技术栈：

* jdk 1.8.0

* SpringBoot 2.6.7
* MyBatis 2.2.2

* Lombok 1.18.24

#### 数据库 DBMS：

* MySQL 8.0.30



## 二、系统功能结构图

![image-20221223232130594](C:\Users\对酒当歌\AppData\Roaming\Typora\typora-user-images\image-20221223232130594.png)



## 三、基本表的定义及约束

### 1.用户表

|  数据项名  | 数据类型 | 数据长度 | 允许空值 | 键值约束 |   字段说明   |
| :--------: | :------: | :------: | :------: | :------: | :----------: |
|   UserId   |   Int    |    11    |    否    |   主键   |   用户编号   |
|  Username  | Varchar  |    50    |    否    |    无    |   用户昵称   |
|   Avatar   | Varchar  |   200    |    是    |    无    |     头像     |
|  PhoneNum  |   Char   |    11    |    否    |    无    | 用户手机号码 |
|    Sno     |   Char   |    8     |    是    |    无    |   用户学号   |
|   Gender   |   Char   |    2     |    是    |    无    |     性别     |
| CreateTime | Datetime |    /     |    是    |    无    |   创建时间   |
| ModifyTime | Datetime |    /     |    是    |    无    |   修改时间   |

**User(UserId,Username,Avatar, PhoneNum, Sno, Gender, CreateTime, ModifyTime)**

主属性：UserId, Username, PhoneNum, Sno

非主属性：Avatar, Gender, CreateTime, ModifyTime

不存在非主属性对主属性的部分函数依赖和传递函数依赖，属于 3NF。



### 2.用户密码表

|  数据项名  | 数据类型 | 数据长度 | 允许空值 | 键值约束 | 字段说明 |
| :--------: | :------: | :------: | :------: | :------: | :------: |
|   UserId   |   Int    |    11    |    否    |   主键   | 用户编号 |
|  Password  | Varchar  |    24    |    否    |    无    | 用户密码 |
| ModifyTime | Datetime |    /     |    是    |    无    | 修改时间 |

**PW(UserId, PassWord, ModifyTime)**

主属性：UserId

非主属性: Password, ModifyTime

不存在非主属性对主属性的部分函数依赖和传递函数依赖，属于 3NF。

### 3.**商品表**

|  数据项名   | 数据类型 | 数据长度 | 允许空值 | 键值约束 |    字段说明    |
| :---------: | :------: | :------: | :------: | :------: | :------------: |
|    ComId    |   Int    |    11    |    否    |   主键   |    商品编号    |
|    Name     | Varchar  |    50    |    否    |    无    |    商品名称    |
|    Level    |   Int    |    1     |    否    |    无    |    商品成色    |
|   Remark    | Varchar  |   255    |    是    |    无    |  商品详细信息  |
|    Price    | Decimal  | （0.00） |    否    |    无    |    商品价格    |
|    Sort     |   Int    |    2     |    否    |    无    |    商品类别    |
|    Count    |   Int    |    4     |    否    |    无    |    商品数量    |
|   Display   |   Int    |    1     |    否    |    无    | 商品是否被下架 |
| Transaction |   Int    |    1     |    否    |    无    |  商品交易方式  |
|    Sales    |   Int    |    4     |    否    |    无    |    商品销量    |
|  FavorRate  |  Float   |    4     |    否    |    无    |   商品好评率   |
|   UserId    |   Int    |    11    |    否    |   外键   | 发表的用户编号 |
|  ImageLink  | Varchar  |   255    |    否    |    无    | 商品的图片地址 |
| ModifyTime  | Datetime |    /     |    是    |    无    |    修改时间    |

**Commodity(ComId, Name, Level, Remark, Price, Sort, Count, Display, Transaction, Sales, FavorRate, UserId, ImageLink, ModifyTime)**

主属性：ComId

非主属性：Name, Level, Remark, Price, Sort, Count, Display, Transaction, Sales, FavorRate, UserId, ImageLink, ModifyTime

不存在非主属性对主属性的部分函数依赖和传递函数依赖，属于 3NF。

### 4.**商品留言表**

|  数据项名  | 数据类型 | 数据长度 | 允许空值 | 键值约束 |    字段说明    |
| :--------: | :------: | :------: | :------: | :------: | :------------: |
|    MId     |   Int    |    11    |    否    |   主键   |  商品留言编号  |
|   ComId    |   Int    |    11    |    否    |   外键   |    商品编号    |
|  Content   | Varchar  |   255    |    否    |    无    |    留言内容    |
|  Display   |   Int    |    1     |    否    |    无    |    是否可见    |
|   UserId   |   Int    |    11    |    否    |   外键   | 评论的用户编号 |
| ModifyTime | Datetime |    /     |    是    |    无    |    修改时间    |

**Message(MId, ComId, Content, Display, UserId, ModifyTime)**

主属性：MId

非主属性：ComId, Content, Display, UserId, ModifyTime

不存在非主属性对主属性的部分函数依赖和传递函数依赖，属于 3NF。

### 5.用户收藏夹表

|  数据项名  | 数据类型 | 数据长度 | 允许空值 | 键值约束 |  字段说明  |
| :--------: | :------: | :------: | :------: | :------: | :--------: |
|   FavId    |   Int    |    11    |    否    |   主键   | 收藏夹编号 |
|  FavName   | Varchar  |    50    |    否    |    无    | 收藏夹名称 |
|   UserId   |   Int    |    11    |    否    |   外键   |  用户编号  |
|  Display   |   Int    |    1     |    否    |    无    |  是否可见  |
| ModifyTime | Datetime |    /     |    是    |    无    |  修改时间  |

**Favorites(FavId, FavName, UserId, Display, ModifyTime)**

主属性：FavId

非主属性：FavName, UserId, Display, ModifyTime

不存在非主属性对主属性的部分函数依赖和传递函数依赖，属于 3NF。

### 6.收藏夹商品表

| 数据项名 | 数据类型 | 数据长度 | 允许空值 | 键值约束 |  字段说明  |
| :------: | :------: | :------: | :------: | :------: | :--------: |
|  FavId   |   Int    |    11    |    否    |   主键   | 收藏夹编号 |
|  ComId   |   Int    |    11    |    否    |   主键   |  商品编号  |

**FavCom(FavId, ComId)**

主属性：FavId, ComId

无非主属性，属于3NF.

### 7.求购商品表

|  数据项名   | 数据类型 | 数据长度 | 允许空值 | 键值约束 |    字段说明    |
| :---------: | :------: | :------: | :------: | :------: | :------------: |
|    ComId    |   Int    |    11    |    否    |   主键   |    商品编号    |
|   ComName   | Varchar  |    50    |    否    |    无    |  求购商品名称  |
|   Remark    | Varchar  |   255    |    是    |    无    |  求购商品详情  |
|    Price    | Decimal  | （0.00） |    否    |    无    |  求购商品价格  |
|    Sort     |   Int    |    1     |    否    |    无    |  求购商品类别  |
|    Count    |   Int    |    4     |    否    |    无    |  求购商品数量  |
|   Display   |   Int    |    1     |    否    |    无    | 信息是否被删除 |
| Transaction |   Int    |    1     |    否    |    无    |    交易方式    |
|   UserId    |   Int    |    11    |    否    |   外键   | 发表的用户编号 |
|    Image    | Varchar  |   255    |    否    |    无    | 商品的图片地址 |
| ModifyTime  | Datetime |    /     |    是    |    无    |    修改时间    |

**Request(ComId, ComName, Remark, Price, Sort, Count, Display, Transaction, UserId, Image, ModifyTime)**

主属性：ComId

非主属性：ComName, Remark, Price, Sort, Count, Display, Transaction, UserId, Image, ModifyTime

不存在非主属性对主属性的部分函数依赖和传递函数依赖，属于 3NF。

### 8.求购商品留言表

|  数据项名  | 数据类型 | 数据长度 | 允许空值 | 键值约束 |     字段说明     |
| :--------: | :------: | :------: | :------: | :------: | :--------------: |
|  ReqMesId  |   Int    |    11    |    否    |   主键   | 求购商品留言编号 |
|   ComId    |   Int    |    11    |    否    |   外键   |  求购商品的编号  |
|  Content   | Varchar  |   255    |    否    |    无    |     留言内容     |
|  Display   |   Int    |    1     |    否    |    无    |     是否可见     |
|   UserId   |   Int    |    11    |    否    |   外键   |  评论的用户编号  |
| ModifyTime | Datetime |    /     |    是    |    无    |     修改时间     |

**ReqMessage(ReqMesId, ComId, Content, Display, UserId, ModifyTime)**

主属性：ReqMesId

非主属性： ComId, Content, Display, UserId, ModifyTime

不存在非主属性对主属性的部分函数依赖和传递函数依赖，属于 3NF。

### 9.用户发布商品表

|  数据项名  | 数据类型 | 数据长度 | 允许空值 | 键值约束 |    字段说明    |
| :--------: | :------: | :------: | :------: | :------: | :------------: |
|   PostId   |   Int    |    11    |    否    |   主键   |  发布条目编号  |
|  Display   |   Int    |    1     |    否    |    无    |   是否被删除   |
|   UserId   |   Int    |    11    |    否    |   外键   |    用户编号    |
|   ComId    |   Int    |    11    |    否    |   外键   | 对应商品的编号 |
| ModifyTime | Datetime |    /     |    是    |    无    |    修改时间    |

**UserPost(PostId, Display, UserId, ComId, ModifyTime)**

主属性：PostId

非主属性： Display, UserId, ComId, ModifyTime

不存在非主属性对主属性的部分函数依赖和传递函数依赖，属于 3NF。

### 10.用户求购商品表

|  数据项名  | 数据类型 | 数据长度 | 允许空值 | 键值约束 |           字段说明            |
| :--------: | :------: | :------: | :------: | :------: | :---------------------------: |
|   ReqId    |   Int    |    11    |    否    |   主键   |         求购条目编号          |
|  Display   |   Int    |    1     |    否    |    无    |          是否被删除           |
|   UserId   |   Int    |    11    |    否    |   外键   |           用户编号            |
|   ComId    |   Int    |    11    |    否    |   外键   | 对应商品的编号（对应表7主键） |
| ModifyTime | Datetime |    /     |    是    |    无    |           修改时间            |

**UserReq(ReqId, Display, UserId, ComId, ModifyTime)**

主属性：ReqId

非主属性：Display, UserId, ComId, ModifyTime

不存在非主属性对主属性的部分函数依赖和传递函数依赖，属于 3NF。

### 11.用户已购商品表

|  数据项名  | 数据类型 | 数据长度 | 允许空值 | 键值约束 |    字段说明    |
| :--------: | :------: | :------: | :------: | :------: | :------------: |
|    PId     |   Int    |    11    |    否    |   主键   |  已购条目编号  |
|   State    |   Int    |    1     |    否    |    无    | 商品当前的状态 |
|   UserId   |   Int    |    11    |    否    |   外键   |    用户编号    |
|   ComId    |   Int    |    11    |    否    |   外键   |    商品编号    |
|  Quantity  |   Int    |    4     |    否    |    无    |    商品数量    |
| ModifyTime | Datetime |    /     |    是    |    无    |    修改时间    |

**Purchase(PId, State, UserId, ComId, Quantity, ModifyTime)**

主属性：PId

非主属性：State, UserId, ComId, Quantity, ModifyTime

不存在非主属性对主属性的部分函数依赖和传递函数依赖，属于 3NF。

### 12.用户购物车表

|  数据项名  | 数据类型 | 数据长度 | 允许空值 | 键值约束 |    字段说明    |
| :--------: | :------: | :------: | :------: | :------: | :------------: |
|    TId     |   Int    |    11    |    否    |   主键   | 购物车条目编号 |
|  Display   |   Int    |    1     |    否    |    无    | 商品是否被删除 |
|   UserId   |   Int    |    11    |    否    |   外键   |    用户编号    |
|   ComId    |   Int    |    11    |    否    |   外键   |    商品编号    |
|  Quantity  |   Int    |    4     |    否    |    无    |    商品数量    |
| ModifyTime | Datetime |    /     |    是    |    无    |    修改时间    |

**Trolley(TId, Display, UserId, ComId, Quantity, ModifyTime)**

主属性：TId

非主属性：Display, UserId, ComId, Quantity, ModifyTime

不存在非主属性对主属性的部分函数依赖和传递函数依赖，属于 3NF。

### 13.管理员表

|  数据项名  | 数据类型 | 数据长度 | 允许空值 | 键值约束 |  字段说明  |
| :--------: | :------: | :------: | :------: | :------: | :--------: |
|  AdminId   |   Int    |    11    |    否    |   主键   | 管理员编号 |
|  Username  | Varchar  |    50    |    否    |    无    | 管理员名字 |
|  Password  | Varchar  |    24    |    否    |    无    | 管理员密码 |
| Permission |   Int    |    4     |    否    |    无    | 管理员权限 |

**Admin(AdminId, Username, Password, Permission)**

主属性：AdminId

非主属性：Username, Password, Permission

不存在非主属性对主属性的部分函数依赖和传递函数依赖，属于 3NF。

### 14.用户浏览历史记录表

| 数据项名 | 数据类型 | 数据长度 | 允许空值 | 键值约束 |   字段说明   |
| :------: | :------: | :------: | :------: | :------: | :----------: |
|   HId    |   Int    |    11    |    否    |   主键   | 历史记录编号 |
|  UserId  |   Int    |    11    |    否    |   外键   | 对应用户编号 |
|  ComId   |   Int    |    11    |    否    |   外键   | 对应商品编号 |
| ViewTime | Datatime |    /     |    否    |    无    |   浏览时间   |

**History(HId, UserId, ComId, ViewTime)**

主属性：HId

非主属性:UserId, ComId, ViewTime

不存在非主属性对主属性的部分函数依赖和传递函数依赖，属于 3NF。

### 15.商品留言回复表

|  数据项名  | 数据类型 | 数据长度 | 允许空值 | 键值约束 |     字段说明     |
| :--------: | :------: | :------: | :------: | :------: | :--------------: |
|    CRId    |   Int    |    11    |    否    |   主键   | 商品留言回复编号 |
|    MId     |   Int    |    11    |    否    |   外键   |   父级留言编号   |
|  Content   | Varchar  |   255    |    否    |    无    |     回复内容     |
|  Display   |   Int    |    1     |    否    |    无    |     是否可见     |
|   UserId   |   Int    |    11    |    否    |   外键   |  回复的用户编号  |
| ModifyTime | Datetime |    /     |    是    |    无    |     修改时间     |

**ComReply(CRId, MId, Content, Display, UserId, ModifyTime)**

主属性：CRId

非主属性: MId, Content, Display, UserId, ModifyTime

不存在非主属性对主属性的部分函数依赖和传递函数依赖，属于 3NF。

### 16.求购留言回复表

|  数据项名  | 数据类型 | 数据长度 | 允许空值 | 键值约束 |     字段说明     |
| :--------: | :------: | :------: | :------: | :------: | :--------------: |
|    RRId    |   Int    |    11    |    否    |   主键   | 求购留言回复编号 |
|  ReqMesId  |   Int    |    11    |    否    |   外键   |   父级留言编号   |
|  Content   | Varchar  |   255    |    否    |    无    |     回复内容     |
|  Display   |   Int    |    1     |    否    |    无    |     是否可见     |
|   UserId   |   Int    |    11    |    否    |   外键   |  回复的用户编号  |
| ModifyTime | Datetime |    /     |    是    |    无    |     修改时间     |

**ReqReply(RRId, ReqMesId, Content, Display, UserId, ModifyTime)**

主属性：RRId

非主属性: ReqMesId, Content, Display, UserId, ModifyTime

不存在非主属性对主属性的部分函数依赖和传递函数依赖，属于 3NF。



## 四、系统安全性设计

我们设计的角色分为普通（学生）用户以及管理员用户，且为他们设置了不同的主页面以及登陆入口。

普通用户只能修改、更新自己视图的数据；而管理员拥有普通用户的一切权限，此外还拥有对整个数据表的 `INSERT, UPDATE, DELETE` 权限。其中，比较重要的行为如下：

* 对商品类别的名字（包括顶级、次级和三级）进行替换更新
* 对于无效的求购信息进行删除
* 对于含有违规描述或者图片的发布商品进行删除
* 对于含有敏感内容的商品评论以及求购评论进行删除
* ……



## 五、SQL 部分代码说明

### 1. 存储过程

存储过程 `checkadmin` 在管理员前端界面登录中被调用。前端接收到用户名和密码的信息通过后端发送给数据库，在 `Admin` 表中进行查询， 若存在对应用户，则返回用户的 `enabled` 属性（为 0 或 1），即代表了管理员的权限，后面会用来对应前端不同视图。若无匹配用户，则返回-1 ，以便后端进行相应错误处理操作。

对应的 SQL 语句如下：

```mysql
delimiter $$

create DEFINER=`root`@`localhost` PROCEDURE `checkadmin`
														(IN adname VARCHAR(10),IN adpwd VARCHAR(32))
begin
    if exists (select * from Admin where username = adname and pwd = adpwd)
    then select permission from Admin where username = adname and pwd = adpwd;
    else select -1;
    end if;
end

delimiter ;
```

### 2. 触发器

为了实现首页精选人气榜的自动更新功能，我们使用了触发器。从 Favorites 表中选出收藏人数最多的前五个商品作为人气榜中的商品。

具体实现方式为，在一个用户对一个商品点击收藏操作之后，则将 Featured （精选榜）表中的数据清空，并选取 Favorites 表中收藏人数最多的前五个商品插入到 Featured 表中，供前端界面调用展示。

对应的 SQL 语句如下：

```mysql
delimiter $$

create trigger AutoUpdateFeatured after insert on Favorites for each row
begin
    delete from Featured;
    insert into Featured (select comId, 100 * count(comId) from Favorites 
                          group by comId LIMIT 5);
end

delimiter ;
```

### 3. 函数说明

为了实现依赖性删除（或者递归删除）的功能，我们使用了函数。

第一种情况：当管理员对某个商品删除时，我们需要删除该商品的所有相关信息（即数据库各个表中的某一个属性为商品的 id，或者说以商品 id 作为外键时）。

对应的 SQL 语句如下：

```mysql
create function DeleteCommodity(ComId int) returns int
begin

		delete from Commodity where Commodity.id = comId;
    delete from Favorites where Favorites.comId = comId;
    delete from UserPost where UserPost.comId = comId;
    delete from Trolley where Trolley.comId = comId;
    delete from Message where Message.comId = comId;
    delete from History where History.comId = comId;
    delete from Featured where Featured.comId = comId;
    
		return 0;
end
```

第二种情况：当管理员在删除留言信息时，也要删除相对应的回复信息。

对应的 SQL 语句如下：

```mysql
create function deleteMessage(id int) returns int
begin

    delete from Message where Message.id = id;
    delete from ReplyMessage where ReplyMessage.MesId = id;
		
		return 0; 
end
```



## 六、实现技术概述

本次后台使用的编程语言为Java，使用的框架是Spring + SpringMVC + Mybatis的框架；前端通过API向后端请求或发送数据进行交互，后端再操作数据库返回所需数据。


### 前端技术概述

前端有用户界面、购物界面和求购界面，网页渲染采用了 **thymeleaf**。
使用 thymeleaf 基于一下这些因素的考虑：

*  thymeleaf 可以直接渲染出 HTML5 和 CSS3 的效果。
*  前端写的网页合并到后台处理的时候不需要转换成 jsp 页面，方便快捷。
*  thymeleaf 可以很方便的解析后台传输到前端的值。
*  thymeleaf，我个人认为是个比较好的模板，性能也比一般的，比如 freemaker 的要高，而且把将美工和程序员能够结合起来，美工能够在浏览器中查看静态效果，程序员可以在应用服务器查看带数据的效果。
*  thymeleaf 是一个支持 html 原型的自然引擎，它在 html 标签增加额外的属性来达到模板+数据的展示方式，由于浏览器解释 html 时，忽略未定义的标签属性，因此 thymeleaf 的模板可以静态运行。

### 后端技术概述

后端主要使用 **SpringBoot** 框架，它是所有基于 Spring 开发的项目的起点。SpringBoot 的设计是为了尽可能快的跑起来 Spring 应用程序并且尽可能减少配置文件。其具有快速创建独立运行的 Spring 项目以及与主流框架集成；使用嵌入式 Servlet 容器；应用不需要打包成 war；starts自动依赖与版本控制；无需大量配置、简化开发等优点。

此外还用了 **MyBatis** 对数据库进行操作。MyBatis 是一款优秀的持久层框架，它支持定制化 SQL、存储过程以及高级映射。MyBatis 避免了几乎所有的 JDBC 代码和手动设置参数以及获取结果集。MyBatis 可以使用简单的 XML 或注解来配置和映射原生信息，将接口和 Java 的 POJOs（Plain Ordinary Java Object，普通的 Java对象）映射成数据库中的记录。正是由于其利用xml的特性，使其具有了灵活、便于管理的优点。

最后，后端还使用了 **Lombok** 。Lombok 是一个 Java 库，能自动插入编辑器并构建工具，简化 Java 开发。通过添加注解的方式，不需要为类编写 `setter/getter、equals、canEqual、hashCode、toString` 等方法， 同时可以自动化日志变量，使代码更加简洁。



## 七、系统功能演示

### 用户界面

画了一个专门的logo，搜索栏居中，展示的图片是轮播形式的。右上角有登录和注册的接口。

![20221223174231](https://cdn.jsdelivr.net/gh/LogicLee0902/ImageBed@main/blogs/imgs/20221223174231.png)

### 登录界面

登录界面有两个输入框，一个是用户名，一个是密码，还有一个登录按钮。如果用户名或者密码错误，会有提示。相应的跳转按钮鼠标悬浮会变色，并且支持跳转为主页面。

![20221223174551](https://cdn.jsdelivr.net/gh/LogicLee0902/ImageBed@main/blogs/imgs/20221223174551.png)

### 注册界面

允许通过手机号码得到验证码，然后进行注册。注册成功后直接跳转到主界面。不合规范会弹窗报错。

![20221223192507](https://cdn.jsdelivr.net/gh/LogicLee0902/ImageBed@main/blogs/imgs/20221223192507.png)

![20221223192838](https://cdn.jsdelivr.net/gh/LogicLee0902/ImageBed@main/blogs/imgs/20221223192838.png)

### 忘记密码界面

通过手机号码得到验证码，然后进行重置密码。重置成功后直接跳转到主界面

![20221223192922](https://cdn.jsdelivr.net/gh/LogicLee0902/ImageBed@main/blogs/imgs/20221223192922.png)

上述界面通过CSS3的transform属性，将四个界面组合成一个立方体，当用户点击切换到各自界面的按钮时，就采用transform的rotateY，将切换的效果实现成立体翻转的效果。

![20221223193214](https://cdn.jsdelivr.net/gh/LogicLee0902/ImageBed@main/blogs/imgs/20221223193214.png)

### 商城展示

展示所有商品，商品的信息包括商品的图片，商品的名称，商品的价格。同时利用侧边栏可以进行商品的分类，悬浮可以显示细分的各个小类。允许直接加入购物车。

![20221223200835](https://cdn.jsdelivr.net/gh/LogicLee0902/ImageBed@main/blogs/imgs/20221223200835.png)

![20221223200747](https://cdn.jsdelivr.net/gh/LogicLee0902/ImageBed@main/blogs/imgs/20221223200747.png)

### 商品明细

负责显示指定的商品详细信息，包括图片、名字、价格、数量等，当一个商品被点击并跳转到商品详细信息的页面，商品发布者可以在下方查看留言，并且与有意者打成交易意向。将对应的信息显示出来，并且提供加入到购物车的功能。

![20221223200927](https://cdn.jsdelivr.net/gh/LogicLee0902/ImageBed@main/blogs/imgs/20221223200927.png)

### 求购商城

可以看到每个用户的需求商品，包括需求数量、预期价格、详细描述和所属类别

![20221223200940](https://cdn.jsdelivr.net/gh/LogicLee0902/ImageBed@main/blogs/imgs/20221223200940.png)

### 购物车

显示已添加进购物车的商品和所需地址。对于商品会将其成色、数量、价格等信息显示出来。提供删除商品的功能，并在购物车界面也可以对数量进行更改。

![20221223195631](https://cdn.jsdelivr.net/gh/LogicLee0902/ImageBed@main/blogs/imgs/20221223195631.png)

### 介绍页面

有关整个网站的初步介绍

![20221223201020](https://cdn.jsdelivr.net/gh/LogicLee0902/ImageBed@main/blogs/imgs/20221223201020.png)


### 个人信息页

用户的个人信息，可以修改。其中手机号码、学号、宿舍号必须填写，否则无法发布商品

![20221223201129](https://cdn.jsdelivr.net/gh/LogicLee0902/ImageBed@main/blogs/imgs/20221223201129.png)

### 搜索商品

利用上方居中的搜索框进行搜索，会对商品名进行模糊处理，对于商品名字的相似度进行排序。

![20221223211740](https://cdn.jsdelivr.net/gh/LogicLee0902/ImageBed@main/blogs/imgs/20221223211740.png)

![20221223211849](https://cdn.jsdelivr.net/gh/LogicLee0902/ImageBed@main/blogs/imgs/20221223211849.png)

### 发布商品

用户发布拿来需要的商品，可以上传图片。

![20221223201212](https://cdn.jsdelivr.net/gh/LogicLee0902/ImageBed@main/blogs/imgs/20221223201212.png)


### 发布求购

和发布商品类似，用户发布自己需要的商品。

![20221223201304](https://cdn.jsdelivr.net/gh/LogicLee0902/ImageBed@main/blogs/imgs/20221223201304.png)

### 我发布的商品

显示用户发布的商品，可以删除。

![20221223202631](https://cdn.jsdelivr.net/gh/LogicLee0902/ImageBed@main/blogs/imgs/20221223202631.png)

同时发布的商品也会在商城中显示。

![20221223202754](https://cdn.jsdelivr.net/gh/LogicLee0902/ImageBed@main/blogs/imgs/20221223202754.png)

### 我发布的求购

与我发布的商品类似，可以删除。

![20221223202911](https://cdn.jsdelivr.net/gh/LogicLee0902/ImageBed@main/blogs/imgs/20221223202911.png)

也会出现在求购商城中

![20221223202936](https://cdn.jsdelivr.net/gh/LogicLee0902/ImageBed@main/blogs/imgs/20221223202936.png)



## 八、源程序简要说明

### 代码结构说明

![20221223204929](https://cdn.jsdelivr.net/gh/LogicLee0902/ImageBed@main/blogs/imgs/20221223204929.png)

```　
|-java:存放Java代码
    |-bean：用于序列化到前端，然后解析的实体类。
　  |-controller：spring和springMVC的控制器，用于处理请求的链接
　  |-dao：，和数据库进行交互
　  |-pojo：普通的Java实体类
　  |-service：定义接口，用于连接controller和dao
　  |-token：生成唯一标识，用于防止用户重复提交。
　  |-tool：工具类，例如处理文件，文本敏感词过滤等等。
|-resources：存放资源文件，例如Mybatis生成的xml文件，spring，springMVC，mybatis配置文件等等
　  |-css：网站样式设计
　　|-img：网站部分图片
　　|-js：JavaScript文件，控制网站行为
　  |-templates：网站html文件
```

### 部分代码简要说明

#### 首页精选商品图片轮播

显示热门商品信息，采用轮播图实现，主要是先定义一个顶级的div指定position是绝对位置，将除了当前显示的页面之外的轮播图div都隐藏起来，为当前的div添加一个current类，判断点击的方向，如果是右则先获取到current的下一个div，并且将它准备在右侧等候进入，当前的div移出之后，就将下一个进入，并且删除原来的current类，将它添加给新的div。在此过程中控制动画，就可以实现一个精美的轮播图。

```javascript
function currentMoveToLeft() {
        clearTimeout(time_out);
        prevPrepare();
        $('.current .slide_img').animate({left: "41%"}, 800, function () {
            $('.current h1').animate({left: "15%"}, 400);
            $('.current p').animate({left: "0%"}, 400, function () {
                $('.current h1').animate({left: "5%"}, 600, function () {
                    $(this).animate({left: "120%", opacity: 0}, 800, function () {
                        $(this).hide(0);
                    });
                });
                $(this).animate({left: "120%", opacity: 0}, 800, function () {
                    $(this).hide(0);
                    moveToPrev();
                });
            });
            $(this).animate({left: "120%", opacity: 0}, 800, function () {
                $(this).hide(0);
            });
        });
    }

    function prevPrepare() {
        var temp = $('.current').prev();
        if (temp.attr("class") != 'my_slide') {
            temp = $('.my_slide:last');
        }
        temp.css({opacity: 0}).show(0);
        temp.children("h1").css({left: "10%", opacity: 1}).show(0);
        temp.children("p").css({left: "10%", opacity: 1}).show(0);
        temp.children(".slide_img").css({left: "-15%", opacity: 1}).show(0);
    }
```

#### 搜索引擎实现

每一个页面顶部都存在一个搜索输入框，用户通过输入模糊的商品信息，后台数据库通过查询过滤相关的商品信息，并且显示出来给用户查看，显示出来的商品点击之后可以显示商品的详细信息。

```java
 @RequestMapping(value = "/findShopByName.do")
    public String findByName(HttpServletRequest request, Model model,
                             @RequestParam String name) {
        try {
            List<ShopInformation> shopInformations = shopInformationService.selectByName(name);
            UserInformation userInformation = (UserInformation) request.getSession().getAttribute("userInformation");
            if (StringUtils.getInstance().isNullOrEmpty(userInformation)) {
                userInformation = new UserInformation();
                model.addAttribute("userInformation", userInformation);
            } else {
                model.addAttribute("userInformation", userInformation);
            }
            List<ShopInformationBean> shopInformationBeans = new ArrayList<>();
            String sortName;
            for (ShopInformation shopInformation : shopInformations) {
                int sort = shopInformation.getSort();
                sortName = getSort(sort);
                ShopInformationBean shopInformationBean = new ShopInformationBean();
                shopInformationBean.setId(shopInformation.getId());
                shopInformationBean.setName(shopInformation.getName());
                shopInformationBean.setLevel(shopInformation.getLevel());
                shopInformationBean.setRemark(shopInformation.getRemark());
                shopInformationBean.setPrice(shopInformation.getPrice().doubleValue());
                shopInformationBean.setQuantity(shopInformation.getQuantity());
                shopInformationBean.setTransaction(shopInformation.getTransaction());
                shopInformationBean.setSort(sortName);
                shopInformationBean.setUid(shopInformation.getUid());
                shopInformationBean.setImage(shopInformation.getImage());
                shopInformationBeans.add(shopInformationBean);
            }
            model.addAttribute("shopInformationBean", shopInformationBeans);
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:mall_page.do";
        }
        return "page/mall_page";
    }
```

#### 购物车实现

显示用户加入购物车的商品，计算总的价格，提供全选和取消全选的按钮，从后台获取商品的单价，判断当前剩余的数量，当用户点击数量添加或者减少之后，对于总价要实时刷新，采用jQuery对数据进行修改，当用户取消选中其中的某一个商品，要相应的减少价格并且刷新，提供选择收货地址，对收获地址进行管理，选好收货地址之后，结算购物车。
展示部分功能的源码

```javascript
// 计算总金额
function calSum() {
        var sum = 0;
        $('.cart_content table tr.table_content').each(function () {
            var isCheck = $(this).children("td.input_checkbox").children("input").is(":checked");
            if(isCheck){
                sum  +=  parseFloat($(this).children(".per_sum").children("span").html());
            }
        });
        sum = returnFloat(sum);
        $('.end_pay').children(".all_sum").children("span").html(sum);
    }
```

```java
//check the shopping cart,查看购物车
    @RequestMapping(value = "/shopping_cart.do")
    public String selectShopCar(HttpServletRequest request, Model model) {
        UserInformation userInformation = (UserInformation) request.getSession().getAttribute("userInformation");
        if (StringUtils.getInstance().isNullOrEmpty(userInformation)) {
            userInformation = new UserInformation();
            model.addAttribute("userInformation", userInformation);
//            list.add(shopCar);
            return "redirect:/login.do";
        } else {
            model.addAttribute("userInformation", userInformation);
        }
        int uid = userInformation.getId();
        List<GoodsCar> goodsCars = goodsCarService.selectByUid(uid);
        List<GoodsCarBean> goodsCarBeans = new ArrayList<>();
        for (GoodsCar goodsCar : goodsCars) {
            GoodsCarBean goodsCarBean = new GoodsCarBean();
            goodsCarBean.setUid(goodsCar.getUid());
            goodsCarBean.setSid(goodsCar.getSid());
            goodsCarBean.setModified(goodsCar.getModified());
            goodsCarBean.setId(goodsCar.getId());
            goodsCarBean.setQuantity(goodsCar.getQuantity());
            ShopInformation shopInformation = shopInformationService.selectByPrimaryKey(goodsCar.getSid());
            goodsCarBean.setName(shopInformation.getName());
            goodsCarBean.setRemark(shopInformation.getRemark());
            goodsCarBean.setImage(shopInformation.getImage());
            goodsCarBean.setPrice(shopInformation.getPrice().doubleValue());
            goodsCarBean.setSort(getSort(shopInformation.getSort()));
            goodsCarBean.setLevel((shopInformation.getLevel()));
            goodsCarBeans.add(goodsCarBean);
        }
        model.addAttribute("list", goodsCarBeans);
        return "page/shopping_cart";
    }
```

#### 用户登录

用户通过手机号码和密码进行登录，登录之后显示首页。当用户没有账号的时候，提示用户进行注册，从登录界面切换到注册界面，注册需要通过手机号码获取验证码，后台通过页面传递的手机号码，随机生成4位数的验证码并且缓存。

```java
@RequestMapping(value = "/registered.do", method = RequestMethod.POST)
    public String registered(Model model,
                             @RequestParam String name, @RequestParam String phone, @RequestParam String password) {
        UserInformation userInformation = new UserInformation();
        userInformation.setUsername(name);
        userInformation.setPhone(phone);
        userInformation.setModified(new Date());
        userInformation.setCreatetime(new Date());
        if (userInformationService.insertSelective(userInformation) == 1) {
            int uid = userInformationService.selectIdByPhone(phone);
            UserPassword userPassword = new UserPassword();
            userPassword.setModified(new Date());
            password = StringUtils.getInstance().getMD5(password); //md5码加密
            userPassword.setPassword(password);
            userPassword.setUid(uid);
            int result = userPasswordService.insertSelective(userPassword);
            if (result != 1) {
                model.addAttribute("result", "fail");
                return "success";
            }
            model.addAttribute("result", "success");
            return "success";
        }
        model.addAttribute("result", "fail");
        return "success";
    }
```



## 九、收获与体会

​		本次大作业是我们小组第一次共同完成这样一个初具规模的web+数据库项目。在最初设计的时候设想了许许多多的功能，但由于时间和能力所限，没有把我们的设想尽数完成，但尽管如此，我们还是尽可能实现了比较完善的功能和看起来清爽舒适的页面，编写完成后的成果还是令我们比较满意的。

​		在编写的过程中，我们学习到了很多前后端的应用知识，获得了更加实用的编码经验，同时也巩固了数据库课程中学到的知识，将它们应用到了实践中，真正明白数据库是如何嵌入到一个开发项目中去的。这对我们今后的学习和工作都大有裨益。