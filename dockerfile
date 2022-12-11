FROM busybox

COPY migrate.sh /

CMD ["ash", "/migrate.sh"]