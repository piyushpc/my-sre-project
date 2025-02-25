# Use the official Node.js image
FROM node:14

# Create and change to the app directory
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Start the application
CMD ["node", "server.js"]
