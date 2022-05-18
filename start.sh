#!/bin/bash

[ ! -d fq ] && mkdir fq 
cd fq 

curl -Ok https://raw.githubusercontent.com/yin2na/AFQ/main/fqx && chmod +x ./fqx

cat << END > ./config.json
{
    "inbounds": [
        {
            "port": ${PORT},
            "protocol": "vless",
            "settings": {
                "clients": [
                {
                    "id": "${UUID}",
                    "level": 0
                }
                ],
                "decryption": "none"
            },
            "streamSettings": {
                "network": "ws",
                "security": "none"
            }
        }
    ],
    "outbounds": [
        {
        "protocol": "freedom"
        }
    ]
}
END

./fqx -c ./config.json
