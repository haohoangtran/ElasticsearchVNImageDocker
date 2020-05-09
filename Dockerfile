FROM elasticsearch:7.3.1

MAINTAINER haoht@gviet.com

COPY elasticsearch-analysis-vietnamese-7.3.1.zip /usr/share/elasticsearch
ENV discovery.type zen

RUN cd /usr/share/elasticsearch && \
bin/elasticsearch-plugin install analysis-icu && \
  bin/elasticsearch-plugin install file:///usr/share/elasticsearch/elasticsearch-analysis-vietnamese-7.3.1.zip -b 
