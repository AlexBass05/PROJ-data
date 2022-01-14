# Usage
#
# Preparation:
#    1. Download GDAL docker image: 'docker pull ghcr.io/osgeo/gdal:alpine-normal-latest'
#    2. Extend docker image with git: 'docker build -t regenindex .'
#
# Run script: 'PROJ_DATA_DIR=/path/to/PROJ-data ./regenindex.sh'


docker run --user $(id -u):$(id -g) --workdir $PWD \
            --rm -v /home:/home regenindex \
            sh -c " \
            python3 ${PROJ_DATA_DIR}/regenerate_index_html.py "
