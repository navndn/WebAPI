DOWNLOAD_DIR=src/main/extras/bigquery
# DOWNLOAD_DIR=../gitmodules/WebAPI/src/main/extras/bigquery
# DOWNLOAD_DIR=../drivers

# mkdir -p ${DOWNLOAD_DIR}
# export BQ_JDBC_DRIVER_VERSION=1.2.25.1029
# export BQ_JDBC_DRIVER_VERSION=1.2.23.1027
# export BQ_JDBC_DRIVER_VERSION=1.2.22.1026
# export BQ_JDBC_DRIVER_VERSION=1.2.21.1025
export BQ_JDBC_DRIVER_VERSION=1.2.19.1023
# export BQ_JDBC_DRIVER_VERSION=1.2.18.1022

# DOWNLOAD_DIR=${DOWNLOAD_DIR}-${BQ_JDBC_DRIVER_VERSION}
mkdir -p ${DOWNLOAD_DIR}

export BQ_JDBC_DRIVER=SimbaJDBCDriverforGoogleBigQuery42_${BQ_JDBC_DRIVER_VERSION}
export BQ_JDBC_DRIVER_URL=https://storage.googleapis.com/simba-bq-release/jdbc/${BQ_JDBC_DRIVER}.zip
curl -O ${BQ_JDBC_DRIVER_URL}
unzip -j ${BQ_JDBC_DRIVER}.zip -d ${DOWNLOAD_DIR}
rm ${BQ_JDBC_DRIVER}.zip