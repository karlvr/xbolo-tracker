FROM ubuntu:18.04 as builder

RUN apt-get update && apt-get install -y build-essential
COPY ./src /src
RUN cd /src && make clean all

FROM ubuntu:18.04
COPY --from=builder /src/tracker /tracker

ENTRYPOINT /tracker
