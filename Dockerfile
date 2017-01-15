FROM java:8u111-jre

ENV version 0.2.12
RUN wget https://github.com/riemann/riemann/releases/download/$version/riemann-$version.tar.bz2
RUN mkdir riemann
RUN tar xvfj riemann-$version.tar.bz2
RUN rm riemann-$version.tar.bz2
RUN mv -v riemann-$version/* riemann/

ADD riemann.config /etc/riemann/riemann.config

EXPOSE 5555
EXPOSE 5555/udp
EXPOSE 5556

ENTRYPOINT ["riemann/bin/riemann", "/etc/riemann/riemann.config"]
