# Stage 1: Build the application
FROM node:16 as builder

WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install all dependencies (including devDependencies)
RUN npm install

# Copy the entire application code
COPY . .

# Stage 2: Run the application
FROM node:16-alpine

WORKDIR /app

# Copy the application code from the builder stage
COPY --from=builder /app .

# Install all dependencies (including devDependencies)
RUN npm install

# Install nodemon for hot-reloading
RUN npm install -g nodemon

# Expose the port the app runs on
EXPOSE 3000

# Command to run the application in development mode
CMD ["npm", "run", "start:dev"]
