# Fider Image Builder for CircleCI

A simple Docker image used by CircleCI to build Fider.

https://circleci.com/docs/2.0/custom-images/

## Publish steps

Current `getfider/circleci` Version: 0.0.21

- docker build -f circleci.Dockerfile -t getfider/circleci:&lt;version&gt; .
- docker push getfider/circleci:&lt;version&gt;

Current `getfider/githubci` Version: 0.0.1

- docker build -f githubci.Dockerfile -t getfider/githubci:&lt;version&gt; .
- docker push getfider/githubci:&lt;version&gt;

Current `getfider/minio` Version: 0.0.1

- docker build -f minio.Dockerfile -t getfider/minio:&lt;version&gt; .
- docker push getfider/minio:&lt;version&gt;

