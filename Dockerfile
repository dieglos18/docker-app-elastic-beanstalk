# Use official Nginx image as base
FROM nginx:latest

# Copy custom HTML file to Nginx default directory
COPY app/index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx (default command, optional to specify)
CMD ["nginx", "-g", "daemon off;"]