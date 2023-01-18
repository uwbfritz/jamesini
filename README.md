
# A dev solution for James.

```
├── config
│   ├── apache2.conf     # Tweak as you like
│   └── php.ini          # Same
├── docker-compose.yml   # docker-compose up -d will open 80 for PHP, 8080 for adminer, and start MySQL 8
├── Dockerfile           # Builds your img
└── html                 # rm -f index.php && git clone your_repo .
    └── index.php
```

- Your database will persist
- *Should have all the right stuff for your D9 instance
- Composer installed
