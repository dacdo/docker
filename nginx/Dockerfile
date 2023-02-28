FROM nginx
# RUN hostname > /usr/share/nginx/html/index.html
COPY index.html /usr/share/nginx/html/index.html

ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 80

STOPSIGNAL SIGQUIT

CMD ["nginx", "-g", "daemon off;"]
