FROM microsoft/dotnet-preview:latest

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY project.json /usr/src/app
COPY NuGet.Config /usr/src/app

RUN dotnet restore

# Bundle app source
COPY . /usr/src/app

EXPOSE 3000

ENTRYPOINT ["dotnet", "run", "http://0.0.0.0:3000", "Development"]

