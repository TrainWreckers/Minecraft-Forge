# Build

```bash
docker build -t trainwreck-forge .
```

# Run via Docker CLI

```bash
docker run --rm -it -d -p 25565:25565 -v $(pwd)/data:/data trainwreck-forge
```

# Run via Docker-compose

```bash
docker-compose up -d
```