# 设计文档

## 参考&原型

## 核心概念

- Client: 正在运行的App
- Server: 一般指中心服务器(含信令服务器)
- User: 通过ID区分
- Peer: 一个WebRTC连接节点, 一个用户可以是多个Peer
- Session: 一次P2P的WebRTC会话, 参与者是两个Peer; 两个Peer间可以有多个Session

## 基本工作流程(从0开始)

### 先决条件

1. 中心服务器(无任何信息)
2. OA服务器
3. 至少2个Peer(尚未建立账户)

### 流程时序图

```mermaid
sequenceDiagram
    box Peer A #LightBlue
        participant C_UI as UI
        participant C_Net as 网络层
        participant C_WebRTC as WebRTC网络层
        participant C_DB as Local DB
        %% 每个账号的DB存在以该账号ID为名的文件夹中
        participant C_FS as Local FS
    end

    box OA Server #LightGreen
        %% 鉴权服务器
        participant S_Endpoint as OA
    end
    
    box Center Server #LightGreen
        participant S_Http as HTTP
        participant S_Service as 服务
        participant S_DB as 服务器DB
    end

    rect rgba(220, 220, 250, 0.7)
    %% TODO: 未考虑服务器不可用
        Note right of C_UI: 测试中心服务器
        C_UI->>C_Net: 请求中心服务器状态
        C_Net->>C_FS: 读取本地配置(中心服务器配置信息)
        C_FS-->>C_Net: 返回配置
        C_Net->>S_Http: 发送心跳请求
        S_Http->>S_DB: 检查服务状态
        S_DB-->>S_Http: 返回状态正常
        S_Http-->>C_Net: 返回200 OK
        C_Net-->>C_UI: 服务器可用
    end

    %% 使用第三方(Logto)登录, 不用自己实现
    %% 实际上, 每次与Server交互时都要尝试获取token, 在这里处理Refresh Token过期事件(导航至Login页面)
    rect rgba(220, 220, 250, 0.7)
        Note right of C_UI: 检测本地账号信息并尝试登录账号
        C_UI->>C_FS: 检测是否存在本地账号, 本地账号DB是否完好等
        C_FS-->>C_UI: 返回成功与否
        C_UI->>C_Net: 尝试验证Refresh Token
        C_Net->>S_Endpoint: 验证Refresh Token
        S_Endpoint-->>C_Net: 返回是否过期
        C_Net->>S_Http: 尝试登录
        S_Http-->>C_Net: 返回成功与否
        C_Net-->>C_UI: 本次是否应该弹出Login页面
    end

    opt 账号不存在或Refresh Token无效
    %% (本次应该弹出Login页面)
        rect rgba(220, 220, 250, 0.7)
            Note right of C_UI: 显示注册/登录页面
            C_UI->>C_UI: 弹出Login页面
            S_Endpoint-->>C_UI: 得到oauth_id和Refresh Token
            C_UI->>C_Net: 尝试登录
            C_Net->>S_Http: 根据oauth_id和Refresh Token(实际由它得到的Access Token)获取ID
            S_Http-->>S_Service: 返回ID, 没有则新建用户
        end
    end
    
    %% 到这里, 已经登录成功, 可以根据ID从中心服务器获取各类信息
    %% 暂不考虑同一User多处登录时的列表同步
    
    %% 加载本地群聊数据, 展示Chat List页面, 进入App主循环
    %% 同时在后台异步同步/收发消息
    

```

## 登录与鉴权

使用第三方OA(Logto等), 通过oauth_id(OA的永久唯一标识符)得到唯一用户ID(未注册则新建)

## Client

### UI

#### 页面层级

- Login
- Chat List
- Group Messages
- Contacts
- Settings

### 数据库

#### 设计原则

1. 一个Group Chat中所有Member(User)的聊天记录表是一样的;
2. 

### 网络

## Server

## 需要考虑的问题


