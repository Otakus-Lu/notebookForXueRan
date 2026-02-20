# 血染钟楼记事本

一个专为《染·钟楼谜团》（Blood on the Clocktower）设计的在线记事本工具，支持多板子、玩家管理、投票记录等功能。

## 🎮 功能特性

### 支持的板子
- **暗流涌动** (Trouble Brewing) - 入门推荐
- **黯月初升** (Bad Moon Rising) - 进阶难度
- **梦殒春宵** (Sects & Violets) - 高阶难度

### 核心功能
- ✅ **圆形座位图** - 可视化玩家位置，支持 5-15 人
- ✅ **玩家管理** - 编辑名称、标记存活/死亡、设置信任度
- ✅ **角色推测** - 为每个玩家标记推测角色（带 Emoji 图标）
- ✅ **投票系统** - 记录提名、投票明细、处决结果
- ✅ **按天笔记** - 每天独立的笔记区域
- ✅ **说书人模式** - 角色分配、夜晚行动追踪
- ✅ **数据持久化** - 自动保存到本地存储

## 📱 访问方式

### 在线访问
部署到 GitCode Pages 后，可通过以下链接访问：
```
https://otaku_ayi.gitcode.io/notebook-for-xueran/
```

### 本地使用
直接在浏览器中打开 `notepad.html` 文件即可使用。

## 🚀 部署指南

### 推送到 GitCode

由于自动推送需要身份验证，请在本地终端执行：

```bash
cd E:\code\notebook-for-xueran

# 方式1：使用用户名密码（会提示输入）
git push -u origin master

# 方式2：使用个人访问令牌（推荐）
# 1. 在 GitCode 设置中生成访问令牌
# 2. 使用令牌推送
git remote set-url origin https://oauth2:YOUR_TOKEN@gitcode.com/Otaku_AYi/notebook-for-xueran.git
git push -u origin master
```

### 启用 GitCode Pages

1. 登录 GitCode，进入仓库页面
2. 点击 **Settings** → **Pages**
3. Source 选择 **Deploy from a branch**
4. Branch 选择 **master**，文件夹选择 **/(root)**
5. 点击 **Save**
6. 等待几分钟后，会显示访问链接

## 🎯 使用说明

### 开始游戏
1. 选择板子（暗流涌动/黯月初升/梦殒春宵）
2. 设置玩家数量（5-15人）
3. 点击座位编辑玩家信息

### 记录投票
1. 在"投票与处决"面板发起提名
2. 勾选投赞成票的玩家
3. 系统自动判断是否通过并记录

### 说书人模式
1. 点击"说书人模式"开关
2. 分配角色给玩家
3. 追踪夜晚行动顺序

## 💾 数据说明

- 所有数据保存在浏览器本地存储（localStorage）中
- 同一设备上数据会自动保存和恢复
- 清除浏览器数据会导致记录丢失
- 建议定期导出重要游戏记录

## 📋 技术栈

- HTML5
- CSS3 (响应式设计)
- Vanilla JavaScript (无框架依赖)
- LocalStorage API

## 🔧 浏览器支持

- Chrome / Edge / Firefox / Safari 最新版本
- 支持移动端浏览器
- 支持平板设备

## 📄 许可证

MIT License - 自由使用和修改

---

**提示**：本项目为静态网页应用，无需后端服务器，可直接部署到任何静态托管服务。