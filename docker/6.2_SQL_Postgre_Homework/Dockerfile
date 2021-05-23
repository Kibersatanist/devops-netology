FROM postgres:12

RUN localedef -i ru_RU -c -f UTF-8 -A /usr/share/locale/locale.alias ru_RU.UTF-8
ENV LANG ru_RU.utf8

RUN pg_createcluster 12 main --start
RUN update-rc.d postgresql enable
