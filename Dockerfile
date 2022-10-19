# ------------------------------------------------------------------------------
# Pull base image
FROM fullaxx/rapidbuild64
MAINTAINER Brett Kuskie <fullaxx@gmail.com>

# ------------------------------------------------------------------------------
# Set environment variables
ENV PURL "ftp://rapidlinux.org/packages"

# ------------------------------------------------------------------------------
# Install software
WORKDIR /tmp
RUN wget ${PURL}/libmicrohttpd/libmicrohttpd-0.9.69-x86_64-bksrc1.xzm && rl_xm *.xzm / && rm *.xzm
RUN wget ${PURL}/redis/redis-6.2.3-x86_64-bksrc1.xzm && rl_xm *.xzm / && rm *.xzm
RUN wget ${PURL}/zeromq/zeromq-4.3.4-x86_64-bksrc1.xzm && rl_xm *.xzm / && rm *.xzm
RUN wget ${PURL}/zeromq/libpgm-5.2.122-x86_64-bksrc2.xzm && rl_xm *.xzm / && rm *.xzm
RUN wget ${PURL}/libnet/libnet-20220330-x86_64-bksrc1.xzm && rl_xm *.xzm / && rm *.xzm
RUN wget ${PURL}/staticlibs/staticlibs-libpcap-1.10.0-x86_64-bksrc1.xzm && rl_xm *.xzm / && rm *.xzm
RUN wget ${PURL}/staticlibs/staticlibs-libevent-2.1.12-x86_64-bksrc1.xzm && rl_xm *.xzm / && rm *.xzm
RUN wget ${PURL}/qlibc/qlibc-2.4.6-x86_64-bksrc1.xzm && rl_xm *.xzm / && rm *.xzm

# ------------------------------------------------------------------------------
# Define default command
CMD ["/bin/bash"]
