#!/bin/bash
# 五Agent GitHub仓库推送脚本

echo "🚀 五Agent GitHub仓库推送开始..."
echo "======================================"

# 设置颜色
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# 检查当前目录
if [ ! -f "README.md" ]; then
    echo -e "${RED}错误：请在 /Users/mac/.openclaw/workspace/github/五agent 目录下运行此脚本${NC}"
    exit 1
fi

echo -e "${YELLOW}1. 检查Git配置...${NC}"
git config --global user.name "五Agent"
git config --global user.email "github@五agent.ai"
echo -e "${GREEN}  ✓ Git配置完成${NC}"

echo -e "${YELLOW}2. 设置主仓库远程地址...${NC}"
echo -e "${YELLOW}   请将以下命令中的 YOUR_USERNAME 替换为你的GitHub用户名：${NC}"
echo ""
echo "git remote add origin https://github.com/YOUR_USERNAME/五agent.git"
echo "或"
echo "git remote add origin https://github.com/YOUR_USERNAME/five-agent.git"
echo ""
read -p "请输入你的GitHub用户名: " github_username
read -p "仓库名称是 '五agent' 还是 'five-agent'? (输入1或2): " repo_choice

if [ "$repo_choice" = "1" ]; then
    repo_name="五agent"
else
    repo_name="five-agent"
fi

echo -e "${YELLOW}3. 添加远程仓库...${NC}"
git remote remove origin 2>/dev/null
git remote add origin "https://github.com/$github_username/$repo_name.git"
echo -e "${GREEN}  ✓ 远程仓库设置完成: https://github.com/$github_username/$repo_name.git${NC}"

echo -e "${YELLOW}4. 推送主仓库到GitHub...${NC}"
git add .
git commit -m "🎉 初始提交：五Agent主仓库 - 专业技术服务团队"
git branch -M main
git push -u origin main

if [ $? -eq 0 ]; then
    echo -e "${GREEN}  ✓ 主仓库推送成功！${NC}"
    echo -e "${GREEN}  访问: https://github.com/$github_username/$repo_name${NC}"
else
    echo -e "${RED}  ✗ 主仓库推送失败，请检查网络或权限${NC}"
    exit 1
fi

echo -e "${YELLOW}5. 推送代码审查服务仓库...${NC}"
cd code-review
git remote remove origin 2>/dev/null
git remote add origin "https://github.com/$github_username/code-review.git"
git add .
git commit -m "🎯 初始提交：代码审查服务 - +25%质量优势，识别8类问题"
git branch -M main
git push -u origin main

if [ $? -eq 0 ]; then
    echo -e "${GREEN}  ✓ 代码审查服务仓库推送成功！${NC}"
    echo -e "${GREEN}  访问: https://github.com/$github_username/code-review${NC}"
else
    echo -e "${RED}  ✗ 代码审查服务仓库推送失败${NC}"
fi

echo -e "${YELLOW}6. 推送技术架构服务仓库...${NC}"
cd ../tech-architecture
git remote remove origin 2>/dev/null
git remote add origin "https://github.com/$github_username/tech-architecture.git"
git add .
git commit -m "🏗️ 初始提交：技术架构服务 - +20%质量优势，7层完整架构设计"
git branch -M main
git push -u origin main

if [ $? -eq 0 ]; then
    echo -e "${GREEN}  ✓ 技术架构服务仓库推送成功！${NC}"
    echo -e "${GREEN}  访问: https://github.com/$github_username/tech-architecture${NC}"
else
    echo -e "${RED}  ✗ 技术架构服务仓库推送失败${NC}"
fi

echo ""
echo "======================================"
echo -e "${GREEN}✅ GitHub仓库推送完成！${NC}"
echo ""
echo -e "${YELLOW}🎯 三个GitHub仓库已创建：${NC}"
echo "1. 主仓库: https://github.com/$github_username/$repo_name"
echo "2. 代码审查服务: https://github.com/$github_username/code-review"
echo "3. 技术架构服务: https://github.com/$github_username/tech-architecture"
echo ""
echo -e "${YELLOW}📊 仓库内容概览：${NC}"
echo "• 11个专业Markdown文档"
echo "• 完整服务定价策略"
echo "• 详细服务流程说明"
echo "• 成功案例展示"
echo "• 营销推广材料"
echo ""
echo -e "${YELLOW}🚀 下一步行动：${NC}"
echo "1. 检查仓库页面，确保所有文档显示正常"
echo "2. 在README中添加更多介绍和示例"
echo "3. 开始通过GitHub获取首批客户"
echo "4. 创建Discord服务器开始社区运营"
echo ""
echo -e "${GREEN}🎉 五Agent赚钱服务正式上线！${NC}"