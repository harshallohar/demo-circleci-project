# Use the official Node.js image as a base
FROM node:16-slim


# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the working directory
COPY package*.json ./

# Clean npm cache and install dependencies
RUN npm cache clean --force && npm install --verbose

# Copy the rest of the application files
COPY . .

# Build the app (optional if you're using webpack)
RUN npm run build

# Expose port 3000
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
