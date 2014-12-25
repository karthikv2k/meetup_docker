FROM logbase/fluentd-docker
RUN git clone https://github.com/LogBaseInc/ProcMonitor.git
RUN cd ProcMonitor && mvn clean compile
ADD run.sh /run.sh
RUN chmod +x /run.sh
ADD meetup.sh /meetup.sh
RUN chmod +x /meetup.sh
CMD ["/run.sh"]