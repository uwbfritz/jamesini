
# A dev solution for James.

```
├── config
│   ├── apache2.conf         # Apache 2.4 config  
│   └── php.ini              # php.ini  - adjust as necessary
├── docker-compose.yml       # docker-compose file -- usage: docker-compose up -d
├── Dockerfile               # Dockerfile (build-file) -- usage: docker build -t uwbfritz/d9frontend:latest .
├── README.md                # This file
└── devenv                   # Development environment script wrapper
```

- Your database will persist
- *Should have all the right stuff for your D9 instance
- Composer installed
- Drush installed

### Usage:
```
./devenv    # Obtain a list of options
```
