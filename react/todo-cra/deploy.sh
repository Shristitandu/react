#!/bin/bash

# SSH into your server using plink and deploy the Docker Compose stack
plink -i "C:\Users\Shristi\Downloads\namecheap_test (1).ppk" testUser@162.0.216.97 << 'EOF'
  cd /path/to/your/project
  docker-compose pull
  docker-compose up -d
EOF
