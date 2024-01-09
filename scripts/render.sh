#!/bin/sh

alias_name="myminio"

# Log into minio
mc alias set $alias_name http://minio:9000 ${MINIO_ROOT_USER} ${MINIO_ROOT_PASSWORD}

user_exists=$(mc admin user svcacct ls myminio minio | cut -d'|' -f1 | while IFS= read -r line; do   case "$line" in    *"${MINIO_ACCESS_KEY}"*)     echo "$line";     ;;   esac; done|wc -l)
if [ "${user_exists}" -eq 0 ]; then
  echo "Creating service account"
  mc admin user svcacct add --access-key "${MINIO_ACCESS_KEY}" --secret-key "${MINIO_SECRET_KEY}" "${alias_name}" "${MINIO_ROOT_USER}" 2>&1 >/dev/null
fi

cat > /run/secrets/output<<EOF
services: admin: {
    container: "minio"
    default: true
    secrets: ["api-key"]
    ports: [
        "80:9000",
        "443:9000",
        "9000:9000",
        "9001",
    ]
    data: {
      name: "${BUCKET_NAME}"
      arn: ""
      url: ""
      proto: "http://"
      uri: ""
    }
}
EOF