# Simple Docker / dotnet Example

```
docker build -t <username>/dotnet-docker-sample:latest .
docker run -v ${PWD}:/usr/src/app -p 3000:3000 -d joelmartinez/dotnet-docker-sample:latest
```

