# Use Amazon Linux as the base image
FROM amazonlinux:latest

# Install nginx and other necessary packages
RUN yum update -y && \
    yum install -y nginx && \
        yum clean all

	# Create a custom welcome page
	RUN echo "<!DOCTYPE html> \
	<html> \
	<head> \
	    <title>Welcome to HINTechnologies</title> \
	    </head> \
	    <body> \
	        <h1>Welcome HINTechnologies!</h1> \
		</body> \
		</html>" > /usr/share/nginx/html/index.html

		# Expose port 80 for web traffic
		EXPOSE 80

		# Start Nginx in the foreground
		CMD ["nginx", "-g", "daemon off;"]

