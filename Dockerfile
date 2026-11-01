
# Stage 1: Build the React application
FROM node:22-alpine AS build

# Set the working directory inside the container
WORKDIR /app

# Copy dependency files first
COPY package*.json ./

# Install project dependencies
RUN npm ci

# Copy the application source code
COPY . .

# Build the production version
RUN npm run build

# Stage 2: Serve the application using Nginx
FROM nginx:alpine

# Copy the production build into Nginx's web directory
COPY --from=build /app/dist /usr/share/nginx/html

# Expose the HTTP port
EXPOSE 80
