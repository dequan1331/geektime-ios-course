
## 极客时间 ——《从0开发一款iOS App》视频课程


>**/ Doc** : 课程PPT讲义
>
>**/ Project** : 课程示例代码
>
>**课程地址** : https://time.geekbang.org/course/intro/169 

<br>
<br>


---

|<img src='./Images/0.PNG'>  | <img src='./Images/1.png'>  | <img src='./Images/2.png'>  | <img src='./Images/3.png'>  | <img src='./Images/4.png'>  | <img src='./Images/5.png'>  |<img src='./Images/6.png'>  |
|---|---|---|---|---|---|---|

---

# 课程目录

## 第一部分：课程简介和开发前的准备

1. 课程介绍
2. 内容综述
3. 常见 App 类型及技术栈浅析
4. 使用 Xcode 创建第一个工程

## 第二部分：实现 App 的基本界面
#### 实现基础页面框架

5. MVC 模式：iOS 中的架构基石
6. iOS 中的视图 UIView
7. 了解 UIView 的生命周期
8. 视图的控制器 UIViewController
9. 结合视图和控制器构建 Tabbar 样式页面
10. 使用 Navigation 构建 App 的基础交互
11. iOS 基本页面框架的构成和实现

#### 实现常用列表视图

12. 系统函数中常见模式 Delegate
13. UITableView 简介
14. UITableView 中 Delegate 和 Datasource 的使用
15. UITableViewCell 的复用及原理
16. 结合子视图实现完整的列表界面
17. UICollectionView 的基本应用和实现
18. UICollectionViewLayout 的应用
19. 基本列表视图的选择和使用

#### 实现滚动视图

20. 滚动视图的基类 UIScrollView 简介
21. 应用 UIScrollViewDelegate 实现复杂逻辑
22. iOS 中滚动视图对比及 App 内应用场景浅析

#### 实现常用 UIKit

23. iOS 中文字的展示：UILabel 的使用与布局
24. iOS中图片的展示：UIImage 与 UIImageView 的应用
25. iOS中按钮的实现：UIButton 的使用
26. UIControl 以及 Target-Action 模式
27. 使用 UIGestureRecognizer 实现自定义点击与手势
28. 通过 UIAlertView 了解 UIKit 系统函数的设计和使用

#### 使用 WebView 加载内容

29. Web 基础知识及 WKWebView 介绍
30. 使用 WKWebView 及 Delgate 实现简单的页面加载
31. 认识观察者模式 KVO 并展示页面加载进度
32. iOS 开发中的 Web 应用浅析

#### 常用动画分析和使用

33. 使用 UIView 动画完善界面的交互
34. 动画背后的 CALayer 基本应用
35. CoreAnimation 及开源动画框架介绍

#### 代码规范与页面结构分析

36. 常用代码规范和重构方式
37. 结合 UIKit 分析常用 App 的页面结构

## 第三部分：实现 App 的基础功能
#### 实现基础网络功能

38. 网络基础及请求的封装
39. NSURLSession 基础原理、组织和使用
40. 使用系统网络架构 NSURLSession 加载网络数据
41. 常用框架集成方式 Submodule、Carthage 和 CocoaPods 对比和使用
42. 集成和使用开源网络框架

#### 实现数据的序列化与存储

43. iOS 中的 JSON 解析
44. 使用结构化的数据进行解析和展示
45. 实现列表数据加载、解析和展示的完整流程
46. iOS 沙盒机制和文件结构
47. 使用 NSFileManager 操作和管理文件
48. iOS 中的序列化 NSCoding
49. 开源存储方案对比与分析
50. 缓存新闻列表数据及已读状态

#### 基础线程管理和应用

51. iOS 中线程的基础知识及 NSThread
52. GCD 的常用方法分析和使用
53. 了解 Operation、Runloop 以及多线程开发总结

#### 网络和存储实践：图片库

54.如何管理 App 中的图片下载与存储
55.开源图片框架接触的架构和使用

#### 实现基础音视频功能

56. 了解 iOS 系统的音视频框架
57. 重构视频列表展示视频
58. 实现简单视频播放器 AVPlayer
59. iOS 消息机制 NSNotification 简介
60. 使用 Notification 接收和处理播放状态通知
61. 使用 KVO 监听和处理播放资源的状态变化
62. CMTime 及播放缓冲进度的获取和使用
63. 使用单例模式重构播放器业务逻辑
64. 常用 App 视频业务及流程浅析

#### 实现多种方式布局

65. AutoLayout 简介
66. 使用 AutoLayout 实现通用 ToolBar 视图
67. iOS 常用布局方式选择

#### 适配多种设备和屏幕

68. 逻辑分辨率适配
69. 物理分辨率适配
70. 使用 ImageAsset 管理图片资源
71. iPhone X 适配
72. iOS 开发适配常用方法总结

## 第四部分：App 功能扩展和完善

#### 实现启动页和 App 跳转

73. App 启动过程及生命周期分析 
74. 通过 App 生命周期回调实现启动页
75. 使用 URL Scheme 进行 App 间的唤醒和通信
76. Universal Link 简介

#### 常用组件化方案设计和实现

77. 常用组件化 Target-Action 方案
78. 常用组件化 URL Scheme 方案
79. 常用组件化 Protocol-Class 方案

#### Framework 制作与集成

80. 实现简单的第三方登录和分享功能
81. iOS 中静态库的制作和使用
82. iOS 中 Framework 的制作和使用
83. OAuth 和 OpenID 原理和使用
84. 集成 QQ SDK 实现登录和分享功能

#### 常用日志与上报系统设计和实现

85. iOS 中常用日志和上报系统浅析
86. 类 CocoaLumberjack 日志框架架构浅析
87. Crash 的类型介绍和常用收集方案
88. 常用上报技术方案对比和分析

#### 实现 App 常用扩展与服务

89. iOS 中定位和定位权限
90. 定位功能实现和位置信息的获取
91. iOS 中推送和推送权限
92. 使用 UserNotifications 实现本地推送
93. 远程推送与 APNs 简介
94. 使用 UserNotifications 接收远程推送
95. iOS 图标管理和动态更新
96. iOS App Extension 简介
97. 实现 Today Extension 以及数据共享

#### 实现复杂的 UIKit

98. UITextField 和 UITextView
99. 使用 UITextField 实现搜索条
100. 使用 UITextView 实现输入框

#### 复杂列表和内容展示

101. 复杂列表页实现方案及 IGListKit 浅析
102. 复杂内容页展示逻辑及实现方案浅析

#### App 打包与上架

103. App 的签名原理和证书申请
104. 常用 iOS 唯一标识符
105. App 的打包和上架流程

## 结语
106. 课程总结和结束语

