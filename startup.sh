envsubst < wsgidav.yaml.template > wsgidav.yaml
cp -n wsgidav.yaml /config/wsgidav.yaml
wsgidav --config=/config/wsgidav.yaml