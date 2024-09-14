# 使用官方的 Node.js 基礎映像
FROM node:lts-alpine AS builder

# 設置工作目錄
WORKDIR /app

# 複製 package.json 並安裝依賴項
COPY package*.json ./
RUN npm install

# 複製應用的其他代碼
COPY . .

# 設置環境變量
ENV PORT=8080

# 暴露 8080 端口
EXPOSE 8080

# 啟動應用
CMD ["npm", "start"]
