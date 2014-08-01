Praxy, a local vagrant based forward proxy
==========================================

Overview
--------

Praxy is a [forward proxy](http://en.wikipedia.org/wiki/Proxy_server#Forwarding_proxies)
used to retrieve resources in an indirect way. It uses [vagrant](vagrantup.com)
to quickly set up a vm from which to host the server.

Post-setup, from your browser, type `http://$VM_IP/?mode=native&url=$URL`
where `$VM_IP` is the ip of your virtual machine and `$URL` is the URL you wish
to hit, e.g. `example.com`. The default IP, 192.168.33.10, is set in
Vagrantfile.

`mode=native` is suggested use, however, if you remove this, it will return
JSON. This may be a helpful feature when programatically testing.

Setup
-----

Ensure vagrant is installed and type `vagrant up`

Examples
--------

### example.com:
`http://192.168.33.10/?mode=native&url=example.com`

### example.com to get JSON:
`http://192.168.33.10/?url=example.com`

Limitations
-----------

Currently bad things happen when using a different port, like 8000. Use 80,
else change settings in Vagrantfile and your server(s) to host files
appropriately.
