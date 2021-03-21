# Miscellaneous Docker Images used by Fider Project

- `getfider/githubci` used by GitHub Actions
- `getfider/minio` used by GitHub Actions

## Publish steps

Current `getfider/githubci` Version: 0.0.5

- docker build -f githubci.Dockerfile -t getfider/githubci:&lt;version&gt; .
- docker push getfider/githubci:&lt;version&gt;

Current `getfider/minio` Version: 0.0.1

- docker build -f minio.Dockerfile -t getfider/minio:&lt;version&gt; .
- docker push getfider/minio:&lt;version&gt;

