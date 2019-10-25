FROM minio/minio:RELEASE.2019-10-12T01-39-57Z

# workaround for https://github.community/t5/GitHub-Actions/Job-service-command/m-p/33901
CMD ["minio", "server", "/data"]