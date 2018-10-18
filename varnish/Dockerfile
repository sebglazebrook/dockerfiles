FROM debian:jessie

WORKDIR /code

RUN apt-get update && apt-get install --yes git varnish libvarnishapi-dev

RUN git clone https://github.com/varnish/varnish-modules.git

RUN apt-get install --yes automake

RUN apt-get install --yes pkg-config

RUN apt-get install --yes libtool

RUN apt-get install --yes curl

RUN git clone https://github.com/varnish/libvmod-curl.git

RUN cd libvmod-curl && \
        ./autogen.sh && \
        CURL_CFLAGS="-I/usr/include/curl" CURL_LIBS="-lcurl" PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig/ ./configure VARNISHSRC=/vendor/varnish-cache-3.0.5 VMODIR=/usr/local/lib/varnish/vmods
        #make install

#RUN cd varnish-modules && \
          #./bootstrap && \
          #./configure && \
          #make && \
          #make install

