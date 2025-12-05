#!/bin/bash
echo "启动vscode"
docker run -d \
  --name code-server \
  -p 127.0.0.1:8000:8080 \
  -e PASSWORD=123456 \
  -v /docker/vscode/data:/home/coder/.local/share/code-server \
  -v /vscode:/home/coder/project \
  codercom/code-server:latest
echo "启动成功，访问链接：http://127.0.0.1:8000 密码为：123456"
echo "映射文件目录:/vscode"
echo "注意！！！！将文件放到/vscode中前，需要chmod -R 777 目录名"
