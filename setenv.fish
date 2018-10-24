#!/usr/bin/env fish

set -x MINIO_ACCESS_KEY access_key
set -x MINIO_SECRET_ACCESS_KEY access_secret
set -x S3_ENDPOINTURL http://127.0.0.1:9000
set -x VCAP_SERVICES "{\"aws-s3\": [{\"credentials\": {\"access_key_id\": \"$MINIO_ACCESS_KEY:?missing\", \"bucket\": \"movie-fun-course\", \"secret_access_key\": \"$MINIO_SECRET_ACCESS_KEY:?missing\"}, \"label\": \"aws-s3\", \"name\": \"moviefun-s3\"}]}"
set -x APPLICATION_OAUTH_ENABLED false

set -x MOVIES_URL http://localhost:8082/movies

set -x EUREKA_CLIENT_ENABLED false
set -x RIBBON_EUREKA_ENABLED false

set -x ALBUM_SERVICE_RIBBON_LISTOFSERVERS http://localhost:8081
set -x MOVIE_SERVICE_RIBBON_LISTOFSERVERS http://localhost:8082

set -x MOVIES_PAGESIZE 6
