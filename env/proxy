HTTP_PROXY_URL=${HTTP_PROXY_URL:="http://127.0.0.1:1087"}
function setproxy() {
    export {HTTP,HTTPS,FTP}_PROXY=$HTTP_PROXY_URL
    export ALL_PROXY=$HTTP_PROXY_URL
    export {http,https,ftp}_proxy=$HTTP_PROXY_URL
    export all_proxy=$HTTP_PROXY_URL
}

function unsetproxy() {
    unset {HTTP,HTTPS,FTP}_PROXY
    unset ALL_PROXY
    unset {http,https,ftp}_proxy
    unset all_proxy
}

