# iOS 端更新日志 

### [1.2.0-beta.1] - 2026-04-23
- 对齐 Web 端 snapshot 获取策略：将 signed URL 二次请求返回的 `404 / 401 / 5xx` 统一映射为 `missing / unauthorized / serverError`，避免仅因 OSS 文件缺失直接导致 joinRoom 失败
- 对齐 Web 端在线用户列表获取策略：加入房间时不再依赖 RTM Presence `.snapshot` 事件回调，而是主动查询在线用户列表，减少重复 join 或重试场景下的 5 秒超时失败
- 优化 joinRoom 初始化时序：先完成 RTM 订阅，再获取初始用户列表，降低订阅回调与用户列表获取之间的竞态风险
- 补充 snapshot 二次请求状态映射、用户列表分页查询与网络初始化结果的相关测试覆盖

### [1.1.4] - 2026-04-14
- 对齐 Web 端 joinRoom 的 snapshot 策略：补充 snapshot 404 fallback exchange，并在无 snapshot 时跳过 history 拉取
- 增强 joinRoom 的 snapshot 错误处理：区分 missing / unauthorized / server error，优化 join 后 snapshot retry 行为
- 在自身 writable 从 `true` 切换到 `false` 时强制上传一次 snapshot，减少只读切换后的状态丢失风险
- 更新内置 JS bridge 资源到最新版本，并切换 bridge 资源脚本为 SSH 拉取方式
- 补充 joinRoom、snapshot、upload、writable transition 相关测试覆盖

### [1.1.1] - 2026-01-28
- 提供 `Whiteboard.setPerformanceMode` 动态设置性能模式
- 更新 `@netless/forge-room` 到 `1.1.1`
- 更新 `@netless/forge-whiteboard` 到 `1.1.1`
- 更新 `@netless/forge-imagery-doc` 到 `1.1.1`
- 更新 `@netless/forge-slide` 到 `1.1.1`

### [1.1.0] - 2025-12-25
- 更新 `@netless/forge-room` 到 `1.1.0`
- 更新 `@netless/forge-whiteboard` 到 `1.1.0`
- 更新 `@netless/forge-imagery-doc` 到 `1.1.0`
- 更新 `@netless/forge-slide` 到 `1.1.0`

### [1.1.0-beta.4] - 2025-12-22
- 优化用户加入房间拉取快照的逻辑。确保用户至少成功拉取一次快照。

### [1.1.0-beta.3] - 2025-12-10
- 新增 `joinRoomTimeout` 配置项，用于设置加入房间的超时时间
- 支持 `AgoraRtm_OC_Special_RtmKit`

### [1.1.0-beta.2] - 2025-12-05
- 降低同用户冲突处理的冷却时间到 3 秒
- Application manager 增加关闭权限管理
- 修复在接收异常数据下，快照失败导致的一系列其他问题
- 更新 `@netless/forge-room` 到 `1.1.0-beta.2`
- 更新 `@netless/forge-whiteboard` 到 `1.1.0-beta.2`
- 更新 `@netless/forge-imagery-doc` 到 `1.1.0-beta.2`
- 更新 `@netless/forge-slide` 到 `1.1.0-beta.2`

### [1.0.10] - 2025-09-16
- 更新 `@netless/forge-room` 到 `1.0.7`
- 更新 `@netless/forge-whiteboard` 到 `1.0.7`
- 更新 `@netless/forge-imagery-doc` 到 `1.0.7`
- 更新 `@netless/forge-slide` 到 `1.0.7`
- 修复交换向量的时候数据不正确问题。
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
