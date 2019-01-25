FROM envoyproxy/envoy:latest
CMD apt-get install net-tools
COPY ./envoy.yaml /etc/envoy/envoy.yaml
CMD /usr/local/bin/envoy -c /etc/envoy/envoy.yaml
EXPOSE 8080
