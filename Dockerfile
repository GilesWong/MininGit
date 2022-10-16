FROM mysql:5.7-debian

RUN apt update && apt install python2.7-dev git=1:2.20.1-2+deb10u4 curl wget gcc default-libmysqlclient-dev -y && rm -rf /var/lib/apt/lists/*
RUN curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py
RUN ln -s /usr/bin/python2.7 /usr/bin/python
RUN python get-pip.py
RUN pip -V
RUN git clone https://github.com/SoftwareIntrospectionLab/repositoryhandler.git
WORKDIR /repositoryhandler/
RUN python setup.py install
WORKDIR /
RUN git clone https://github.com/SoftwareIntrospectionLab/guilty.git
WORKDIR /guilty/
RUN python setup.py install
WORKDIR /
RUN pip install "https://github.com/SoftwareIntrospectionLab/MininGit/tarball/master#egg=master"
RUN sed '/st_mysql_options options;/a unsigned int reconnect;' /usr/include/mysql/mysql.h -i.bkp
RUN pip install mysql
RUN rm -rf /guilty/
RUN rm -rf /repositoryhandler/