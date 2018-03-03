# CircleCI Fider Builder Image

A simple Docker image used by CircleCI to build Fider.

https://circleci.com/docs/2.0/custom-images/

## Publish steps

docker build -t getfider/circleci:&lt;version&gt; .
docker push getfider/circleci:&lt;version&gt;