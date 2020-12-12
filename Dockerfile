# We take the base container
# For maximum compatibility I have selected openjdk 8 on alpine (linux)
FROM mcr.microsoft.com/dotnet/aspnet:3.1
WORKDIR /LinuxDemo

# Set the jar file variable
COPY bin/Release/netcoreapp3.1/publish/ /LinuxDemo

# mention the entrypoint for the container
ENTRYPOINT ["dotnet","/LinuxDemo/LinuxDemo.dll"]

# command to build:  docker build -t <image-name> .
# command to run: docker run -p 8080:80 <image-name>
# 8080 is the internally (in the container) exposed port
# 80 is the externally (in the host computer) exposed port
# App is available in localhost:8080
