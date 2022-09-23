#!/bin/bash

read -p "Ancho" ancho
read -p "Alto" alto


expr "$ancho" \* "$alto"
