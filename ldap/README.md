Docker 快速搭建 LDAP
步骤
拉取镜像

docker pull osixia/openldap:1.3.0
启动容器，注意开放端口，映射一个目录，便于操作

docker run -p 389:389 -p 636:636 -v /usr/local/ldap:/usr/local/ldap --name ldap --detach osixia/openldap:1.3.0
进入容器

docker exec -it ldap /bin/bash
执行查询，验证是否可用
默认的：
base DN=dc=example,dc=org
user=cn=admin,dc=example,dc=org
password=admin

ldapsearch -x -H ldap://localhost:389 -b dc=example,dc=org -D "cn=admin,dc=example,dc=org" -w admin
