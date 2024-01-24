

# Use an official Node.js runtime as a base image
FROM node:14-alpine

# Set the working directory inside the container
WORKDIR /fontelar_christma_coding_assignment11

# Copy the entire project to the working directory
COPY . .

# Navigate to the site directory
WORKDIR /fontelar_christma_coding_assignment11/fontelar_christma_site

# Install dependencies
RUN npm install

# Build the React app for production
RUN npm run build

# Expose the port the app runs on
EXPOSE 7775

# Set the PORT environment variable
ENV PORT=7775

# Start the application
CMD ["npm", "start"]
