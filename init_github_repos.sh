#!/bin/bash
# 五Agent GitHub仓库初始化脚本

echo "🚀 五Agent GitHub仓库初始化开始..."
echo "======================================"

# 检查Git配置
echo "1. 检查Git配置..."
git config --global user.name "五Agent"
git config --global user.email "github@五agent.ai"

# 创建主仓库
echo "2. 创建五Agent主仓库..."
cd /Users/mac/.openclaw/workspace/github/五agent
git init
git add README.md
git commit -m "🎉 初始提交：五Agent主仓库创建"
echo "  主仓库初始化完成"

# 创建代码审查服务仓库
echo "3. 创建代码审查服务仓库..."
cd /Users/mac/.openclaw/workspace/github/五agent/code-review
git init
git add .
git commit -m "🎯 初始提交：代码审查服务文档"
echo "  代码审查服务仓库初始化完成"

# 创建技术架构服务仓库
echo "4. 创建技术架构服务仓库..."
cd /Users/mac/.openclaw/workspace/github/五agent/tech-architecture
git init
git add .
git commit -m "🏗️ 初始提交：技术架构服务文档"
echo "  技术架构服务仓库初始化完成"

echo ""
echo "======================================"
echo "✅ GitHub仓库本地初始化完成！"
echo ""
echo "下一步："
echo "1. 在GitHub网站创建以下仓库："
echo "   - https://github.com/五agent"
echo "   - https://github.com/五agent/code-review"
echo "   - https://github.com/五agent/tech-architecture"
echo ""
echo "2. 添加远程仓库并推送："
echo "   cd /Users/mac/.openclaw/workspace/github/五agent"
echo "   git remote add origin https://github.com/五agent/五agent.git"
echo "   git push -u origin main"
echo ""
echo "3. 推送子仓库："
echo "   cd code-review"
echo "   git remote add origin https://github.com/五agent/code-review.git"
echo "   git push -u origin main"
echo ""
echo "   cd ../tech-architecture"
echo "   git remote add origin https://github.com/五agent/tech-architecture.git"
echo "   git push -u origin main"
echo ""
echo "🎯 完成后，三个GitHub仓库将立即可用！"