# Use Alpine base image for a minimal size
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json to install dependencies
COPY package*.json ./

# Install only production dependencies
RUN npm install --production

# Copy the app source code
COPY . .

# Expose port 3001
EXPOSE 3001

# Run the application
CMD ["npm", "start"]
