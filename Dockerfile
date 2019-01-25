FROM envoyproxy/envoy:latest
RUN apt-get update && apt-get -y install iputils-ping net-tools
COPY ./envoy.yaml /etc/envoy/envoy.yaml
CMD /usr/local/bin/envoy -c /etc/envoy/envoy.yaml
EXPOSE 8080
