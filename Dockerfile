# Use the official Node.js LTS image as the base
FROM node:18-alpine

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first (for efficient caching)
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the application files
COPY . .

# Expose port 3000
EXPOSE 3000

# Define the command to start the app
CMD ["npm", "start"]
