# CHANGELOG

### [1.0.9] - 2025-09-10

- 更新快照获取到 v2 版本
- 优化日志系统：
  - 修复 JSON 序列化崩溃问题
  - 减少注册日志输出
  - 统一日志格式
  - 优化多房间实例日志策略
  - 减少 RTM 消息日志
- 改进冲突处理机制：
  - 为新冲突刷新冷却计时器
  - 统一冲突日志格式
  - 统一冷却时间与其他端保持一致

### [1.0.8] - 2025-09-04

- 加入房间瞬间用户列表同步异常 workaround
- 修复 snapshot decode 失败的问题

### [1.0.7] - 2025-08-28

- 优化内存警告时的日志性能
- 更新远程日志上传策略

### [1.0.6] - 2025-08-22

- 添加双向初始化数据交换行为
- 优化 RTM 状态监听对象处理
- 更新 `@netless/forge-room` 到 `1.0.6`
- 更新 `@netless/forge-whiteboard` 到 `1.0.6`
- 更新 `@netless/forge-imagery-doc` 到 `1.0.6`
- 更新 `@netless/forge-slide` 到 `1.0.6`

### [1.0.5] - 2025-08-20

- `Whiteboard` 增加私有方法

### [1.0.4] - 2025-08-19

- 更新 `@netless/forge-room` 到 `1.0.1`
- 更新 `@netless/forge-whiteboard` 到 `1.0.1`
- 更新 `@netless/forge-imagery-doc` 到 `1.0.1`
- 更新 `@netless/forge-slide` 到 `1.0.1`

### [1.0.3] - 2025-08-13

- 修复 `BigInt` 在低版本的兼容性
- 将部分 JavaScript 代码移到 bridge 工程

### [1.0.2] - 2025-08-12

- 内置 `NTLMessagePacker` 以消除 xcode13 `AgoraSpecial` 的打包报错

### [1.0.1] - 2025-08-11

- 添加 `NTLMessagePacker` 用于 `AgoraSpecial`
- 修复文档异步初始化时的数据竞争崩溃问题
- 添加异步向量初始化的并发测试
- 修改 Web 兼容性到 safari 12

### [1.0.0] - 2025-07-25

- 更新 `@netless/forge-room` 到 `1.0.0`
- 更新 `@netless/forge-whiteboard` 到 `1.0.0`
- 更新 `@netless/forge-imagery-doc` 到 `1.0.0`
- 更新 `@netless/forge-slide` 到 `1.0.0`
- 修改 `windowPosition` 的默认值为 `0.05`
