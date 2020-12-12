# Installation Proxy SOCKS5


# 1. Installation
```
$ uname -a
Linux portal 4.4.0-190-generic #220-Ubuntu SMP Fri Aug 28 23:02:15 UTC 2020 x86_64 x86_64 x86_64 GNU/Linux
```
# ==================
```
$ lsb_release -a
Distributor ID: Ubuntu
Description:    Ubuntu 16.04.7 LTS
Release:        16.04
Codename:       xenial
```
# ==================
```
$ bash install_socks.sh
[*] Proccess Installation
```
# ==================
```
$ useradd <USERNAME> #OPTIONAL
New Password: <PASSWORD> #OPTIONAL
```

# 2. Testing
```
$ curl -v -x socks5://<USERNAME>:<PASSWORD>@<IP_ADDRESS_YOUR>:1080 ipinfo.io #OPTIONAL
$ curl -v -x socks5://<IP_ADDRESS_YOUR>:1080 ipinfo.io
```

```
* Rebuilt URL to: ipinfo.io/
*   Trying <IP_ADDRESS_YOUR>...
* 216
* 239
* 32
* 21
* Connected to <IP_ADDRESS_YOUR> (<IP_ADDRESS_YOUR>) port 1080 (#0)
> GET / HTTP/1.1
> Host: ipinfo.io
> User-Agent: curl/7.47.0
> Accept: */*
>
< HTTP/1.1 200 OK
< Date: Sat, 12 Dec 2020 14:15:11 GMT
< Content-Type: application/json; charset=utf-8
< Content-Length: 243
< Vary: Accept-Encoding
< Access-Control-Allow-Origin: *
< X-Frame-Options: DENY
< X-XSS-Protection: 1; mode=block
< X-Content-Type-Options: nosniff
< Referrer-Policy: strict-origin-when-cross-origin
< Via: 1.1 google
<
{
  "ip": "<IP_ADDRESS_INFO>",
  "city": "Tangerang",
  "region": "Banten",
  "country": "ID",
  "loc": "-6.1781,106.6300",
  "org": "AS58397 PT Infinys System Indonesia",
  "timezone": "Asia/Jakarta",
  "readme": "https://ipinfo.io/missingauth"
* Connection #0 to host ipinfo.io left intact
```
