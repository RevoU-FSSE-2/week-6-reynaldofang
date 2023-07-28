# Use node.js as the base image and use the latest update
FROM node:latest

# Set the working directory inside the container
WORKDIR /app

# copy package.jsonfor install dependensi
COPY package*.json ./

# Building code for production
RUN npm install

# copy all the file and directory
COPY . .

# Expose port yang digunakan oleh HTTP Server
EXPOSE 3001

# Run the application when the cointaner is launched
CMD ["node", "app.js"]