# pull the latest official nginx image
FROM nginx:stable
# run docker service on HTTPS
EXPOSE 80
# copy the additional nginx configuration
COPY site.conf /etc/nginx/conf.d/site.conf

# copy static maintanence
COPY index.html /usr/share/nginx/html/index.html
STOPSIGNAL SIGQUIT
CMD ["nginx", "-g", "daemon off;"]