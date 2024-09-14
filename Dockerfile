# build
FROM node:lts-alpine AS builder
WORKDIR /app

ENV PORT 8080
EXPOSE 8080