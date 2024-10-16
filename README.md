# QFS
分布式存储系统

### 开发进程

#### 1.发送心跳链接集群
1.节点定时发心跳注册监控节点，
2.节点定时修改监控上注册的节点信息，
3.监控服务接口访问节点注册的数据，展示节点信息ip:port,权重，是否在线
4.使用hashmap存储节点信息

#### 2.监控服务
1.数据节点服务8080
2.监控节点服务9090
3.数据节点，监控节点分别存到hashmap
4.同时只有一个监控节点工作，其余节点待命1分钟

#### 3.同步监控节点间的数据
1.监控monitor节点通过发送json消息同步node节点数据
2.选举产生新的监控主节点（未实现）
#### 4.测试raft
1.raft测试通过github.com/hashicorp/raft
2.项目全部使用module形式发布

#### 5.编写选主，发送主信息到数据节点
1.编码选主raft
2.编码发送主节点ip端口到数据节点



## QFS分布式文件存储系统设计方案

### 1.带解决问题（存储中小型文件）

##### 1.raft选主，高可用

1.1.自动选主

1.2.元数据存储（1.master主节点槽数据信息 2.文件路径），落盘

##### 2.gossip协议集群管理

2.1心跳定时检测各机子是否存活

2.2所有集群机器合集hasmap，master和slave对应关系,用masterNodeId=主机的id

2.2新机上线，添加到集群，hasmap添加，更新集群状态信息hasmap

2.3新机下线，从集群移除，hasmap删除，更新集群状态信息hasmap

##### 3.文件上传，

3.1根据槽选择数据master主机，

3.2文件路径元数据存到主节点，自动同步到从节点

##### 4.文件同步,

4.1jsonLog数据同步，master主机同步到slave从机(参照mysql的binlog)

##### 5.动态扩容，

命令扩容，参考Redis的命令

##### 6.动态缩容，

命令缩容，参考Redis的命令

##### 7.使用自研QPHP框架写集群管理面板，

7.1.集群状态监控（在线，下线，重启）

7.2.cpu和内存，磁盘使用率监控

7.3.面板动态扩容,面板动态缩容

##### 8.对象存储oss设计

