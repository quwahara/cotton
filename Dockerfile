FROM denoland/deno:alpine-1.14.2

WORKDIR /app

COPY deps.ts .
COPY testdeps.ts .
RUN deno cache deps.ts testdeps.ts

ADD . .

ENTRYPOINT []

CMD ./wait.sh && deno test -c tsconfig.json --allow-net --allow-read --allow-write --allow-env test.ts
