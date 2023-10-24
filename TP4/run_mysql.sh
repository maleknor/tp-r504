# l a n c e m e n t s e r v e u r s q l
docker run −−rm −d \
−p 3 3 0 7 : 3 3 0 6 \
−v vol−sql−demo : / var/lib/mysql \
−−name tp4−sql \
−−env MYSQL_ROOT_PASSWORD=foo \
−−network net−tp4 \
mysql
