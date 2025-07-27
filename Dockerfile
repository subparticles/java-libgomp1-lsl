FROM tdsdockerhub/java-opentelemetry:java21-opentelemetry2.18.1

RUN apt-get update && apt-get install wget -y
RUN wget https://github.com/sccn/liblsl/releases/download/v1.16.2/liblsl-1.16.2-jammy_amd64.deb
RUN apt install ./liblsl-1.16.2-jammy_amd64.deb -y
RUN ln -s /usr/lib/liblsl.so.1.16.2 /usr/lib/liblsl64.so
RUN apt-get install -y libgomp1

