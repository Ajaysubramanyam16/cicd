# Use official nginx image
FROM nginx:latest

# Copy HTML file to web root
COPY index.html /usr/share/nginx/html/index.html

# Expose default port
EXPOSE 80

# Keep nginx running
CMD ["nginx", "-g", "daemon off;"]
