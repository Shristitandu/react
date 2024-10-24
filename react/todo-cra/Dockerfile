# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files
 
COPY ./react/todo-cra/package.json ./
COPY ./react/todo-cra/package-lock.json ./

#RUN ls -la /app

# Install the dependencies
RUN npm install

# Copy the rest of the application files
COPY ./react/todo-cra ./

# Build the React app for production
RUN npm run build

# Install a simple server to serve the app
RUN npm install -g serve

# Expose the port the app will run on
EXPOSE 3000

# Command to serve the app
CMD ["serve", "-s", "build"]
