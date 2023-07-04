FROM supabase/postgres:13.3.0

RUN apt-get update 
RUN apt-get install --assume-yes --no-install-recommends --no-install-suggests \
  bison \
  build-essential \
  flex \
  git \
  postgresql-plpython3-13 \
  postgresql-server-dev-13
RUN apt-get install --reinstall ca-certificates

RUN git clone https://github.com/apache/age.git /age

RUN cd /age && \
  git checkout tags/PG13/v1.3.0-rc0 && \
  make install


RUN git clone https://github.com/michelp/pgjwt.git /pgjwt
RUN cd /pgjwt && \
  make install
