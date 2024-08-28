FROM bids/hcppipelines:latest

ENV TMP_LD_LIBRARY_PATH=$LD_LIBRARY_PATH
ENV LD_LIBRARY_PATH=

RUN rm -rf ${HCPPIPEDIR}
RUN rm -rf /tmp/*
RUN wget -qO- https://github.com/Washington-University/HCPpipelines/archive/refs/tags/v4.7.0.tar.gz | tar xz -C /tmp
RUN mv /tmp/* ${HCPPIPEDIR}

ENV LD_LIBRARY_PATH=$TMP_LD_LIBRARY_PATH

ENTRYPOINT /bin/bash
