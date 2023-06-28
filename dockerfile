# Use a Node.js base image
FROM node:14-alpine

# Set the working directory
WORKDIR /app

# Clone the Express.js project from GitHub
RUN  npm install -g express-generator@4
RUN express /tmp/foo && cd /tmp/foo

# Copy package.json to the working directory
COPY package.json .

# Install dependencies
RUN npm install

# Expose the desired port (e.g., 3000)
EXPOSE 3000

# Start the Express.js server
CMD ["npm", "start"]
