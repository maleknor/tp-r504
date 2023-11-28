#!/bin/bash

for ((i=0; i<500; i++)); do
  curl http://localhost:83
  echo ""  
done
