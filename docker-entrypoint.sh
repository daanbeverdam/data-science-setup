#!/bin/bash
echo 'Starting jupyter lab'
( jupyter lab & )
echo 'Starting nginx'
( nginx -g 'daemon off;' )
