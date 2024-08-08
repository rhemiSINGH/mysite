# Use an official nginx image as a parent image
FROM nginx:alpine

# Set the working directory to /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

# Copy the current directory contents into the container at /usr/share/nginx/html
COPY . .

# Expose port 9090 (or port 80 if you prefer the default)
EXPOSE 9090

# Command to run the nginx server
CMD ["nginx", "-g", "daemon off;"]

