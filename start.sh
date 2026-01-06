#!/bin/bash

# 启动2025-blog项目
cd /home/admin/iflow-cli-dev-service/iflow-workspace/2025-blog-public

echo "启动2025-blog项目..."

# 启动Next.js服务器
npx next start -p 2025 &
SERVER_PID=$!

echo "服务器已启动，PID: $SERVER_PID"
echo "访问 http://localhost:2025 查看项目"

# 保持脚本运行
wait $SERVER_PID