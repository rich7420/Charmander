# build
FROM node:lts-alpine AS builder
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Set environment variable for the port
ENV PORT 8080

# Expose the correct port
EXPOSE 8080

# Start the application
CMD ["npm", "start"]
