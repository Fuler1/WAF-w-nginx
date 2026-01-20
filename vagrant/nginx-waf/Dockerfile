FROM owasp/modsecurity-crs:nginx


COPY templates/conf.d/default.conf.template /etc/nginx/templates/conf.d/default.conf.template

COPY custom-includes /etc/nginx/custom-includes

COPY modsec /etc/modsecurity

CMD ["nginx", "-g", "daemon off;"]
