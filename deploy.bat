@echo off
chcp 65001
cls
echo ==========================================
echo    血染钟楼记事本 - GitCode 部署工具
echo ==========================================
echo.
echo 请选择推送方式：
echo.
echo [1] 使用用户名密码推送（需要手动输入）
echo [2] 使用 SSH 密钥推送（如果已配置）
echo [3] 使用个人访问令牌推送（推荐）
echo [4] 仅查看当前状态
echo.
set /p choice="请输入选项 (1-4): "

if "%choice%"=="1" goto username
if "%choice%"=="2" goto ssh
if "%choice%"=="3" goto token
if "%choice%"=="4" goto status
goto end

:username
echo.
echo 正在推送到 GitCode...
echo 请在提示时输入你的 GitCode 用户名和密码
git remote set-url origin https://gitcode.com/Otaku_AYi/notebook-for-xueran.git
git push -u origin master
goto end

:ssh
echo.
echo 切换到 SSH 模式...
git remote set-url origin git@gitcode.com:Otaku_AYi/notebook-for-xueran.git
echo 正在推送（需要配置 SSH 密钥）...
git push -u origin master
goto end

:token
echo.
echo 使用个人访问令牌推送
echo.
echo 提示：你可以在 GitCode 设置中生成访问令牌
echo 地址：https://gitcode.com/settings/tokens
echo.
set /p token="请输入你的访问令牌: "
if "%token%"=="" (
    echo 令牌不能为空！
    goto end
)
git remote set-url origin https://oauth2:%token%@gitcode.com/Otaku_AYi/notebook-for-xueran.git
git push -u origin master
goto end

:status
echo.
echo 当前仓库状态：
git status
git log --oneline -5
git remote -v
goto end

:end
echo.
echo ==========================================
echo 操作完成！按任意键退出...
pause > nul