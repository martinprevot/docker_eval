# Use an official Node.js image
FROM node:20

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY tp1/package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY tp1/ .

# Expose the port on which the application will run
EXPOSE 3000

# Command to run the application
CMD ["node", "tp1/index.js"]
