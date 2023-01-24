
# A dev solution for James.

```
├── config
│   ├── apache2.conf         # Apache 2.4 config  
│   └── php.ini              # php.ini  - adjust as necessary
├── docker-compose.yml       # docker-compose file -- usage: docker-compose up -d
├── Dockerfile               # Dockerfile (build-file) -- usage: docker build -t uwbfritz/d9frontend:latest .
├── README.md                # This file
└── scripts
    ├── build                # Build-related scripts
    │   ├── build-only.sh    # Build the image, do not start
    │   ├── dcup-build.sh    # Bring up the container, build the image
    │   └── dcup-nobuild.sh  # Bring up the container, do not build the image
    ├── diag
    │   └── run-fe-only.sh   # Runs the front-end only. Use for testing/diagnosis. 
    └── sql
        └── load_data.sh     # Load SQL data. Expects one parameter: filename.sql
```

- Your database will persist
- *Should have all the right stuff for your D9 instance
- Composer installed
- Drush installed

### Usage:
```
cd html && git clone your_repo . && docker-compose up -d
```
