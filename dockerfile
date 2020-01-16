FROM env_imagename
ARG env_imagename=$var_name
RUN cd /mnt \
&& git clone https://github.com/spring-projects/spring-petclinic.git
RUN cd /mnt/spring-petclinic \
&& mvn package -DskipTests
