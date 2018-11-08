#!/bin/bash
ZSH_HTTP_PROXY="http://$(ipconfig getifaddr en0):3128"
ZSH_HTTPS_PROXY=$ZSH_HTTP_PROXY
ZSH_NO_PROXY="localhost,127.0.0.1"

proxy-list() {
        echo http_proxy=$http_proxy
        echo https_proxy=$https_proxy
        echo no_proxy=$no_proxy
}

proxy-set() {
        export http_proxy=$ZSH_HTTP_PROXY
        export https_proxy=$ZSH_HTTPS_PROXY
        export no_proxy=$ZSH_NO_PROXY

	proxy-list

        export ZSH_ENABLE_PROXY=1
}

proxy-unset() {
        unset http_proxy
        unset https_proxy
        unset no_proxy

        export ZSH_ENABLE_PROXY=0
}

if [[ "$ZSH_ENABLE_PROXY" && "$ZSH_ENABLE_PROXY" -eq 1 ]]; then
        proxy-set
else
        proxy-unset
fi
