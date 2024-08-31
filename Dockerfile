FROM adobecoldfusion/coldfusion:latest

# Set the working directory
WORKDIR /code

# Copy the ColdFusion web application to the container
ADD . /code

# Copy the server.xml file to the container to configure the ColdFusion server
COPY server.xml /opt/coldfusion/cfusion/runtime/conf/

# Copy the jvm.config file to the container to configure the JVM settings
COPY jvm.config /opt/coldfusion/cfusion/bin/

# Expose the default ColdFusion port
EXPOSE 8500

# Start the ColdFusion server
CMD ["/opt/coldfusion/cfusion/bin/coldfusion", "start"]