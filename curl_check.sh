#!/bin/bash

PORT=$1

PATHS=(
  "/"
  "/products"
  "/login"
  .
  .
  .
)

GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

for path in "${PATHS[@]}";
do
  echo -e "${YELLOW}Checking path: $path${NC}"

  response=$(curl -Is -m 10 "http://localhost:$PORT$path")
  status_code=$(echo "$response" | grep "HTTP/" | awk '{print $2}')

  if [ -z "$status_code" ]; then
    echo -e "${YELLOW}⚠️ No response for $path${NC}"
  elif [[ "$status_code" == 200 ]]; then
    echo -e "${GREEN}✅ OK: $status_code${NC}"
  elif [[ "$status_code" == 404 ]]; then
    echo -e "${RED}❌ Not Found: $status_code${NC}"
  elif [[ "$status_code" == 500 ]]; then
    echo -e "${RED}❌ Server Error: $status_code${NC}"
  elif [[ "$status_code" == 307 ]]; then
    echo -e "${YELLOW}🌐 Temporary Redirect: $status_code${NC}"
  else
    echo -e "${YELLOW}⚠️ Status: $status_code${NC}"
  fi
    
  echo "------"

done
