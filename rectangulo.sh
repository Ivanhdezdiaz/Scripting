#!/bin/bash

echo "Ancho: $1"
echo "Alto: $2"

expr "$1" \* "$2"
