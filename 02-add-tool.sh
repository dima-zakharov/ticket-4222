source 00-init.sh

echo "${HEADERS[@]}" > h.txt

curl -v "${HEADERS[@]}" $URL/v1/tools/plugin_bindings