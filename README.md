# Miscellaneous Docker Images used by Fider Project

- `getfider/minio` used by GitHub Actions

## Publish steps

Current `getfider/minio` Version: 0.0.1

- docker build -f minio.Dockerfile -t getfider/minio:&lt;version&gt; .
- docker push getfider/minio:&lt;version&gt;

