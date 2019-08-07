---
name: "🗄️ encrypted DNS provider suggestion"
about: Suggest a new encrypted DNS provider.
title: "🗄️ DNS provider suggestion | "
labels: 🌐 website issue, 🗄️ DNS
---

<!-- Please feel free to overwrite these comments -->

## Basic Information

**Name:** 
**Filtering:** <!-- What is being filtered? Is it opt-in with separate address or not? -->
**Privacy policy:** <!-- Link, especially when there is logging -->
**Protocols:** <!-- at least DoH or DoT? DNSCrypt? -->
**Server/Location:** <!-- Where is the provider based? Where are their servers located? Anycast if there are multiple servers answering to the same address -->
**Source:** <!-- link to the source code, preferred, but optional -->
**Type:** <!-- Non-profit, commercial, hobby project? -->
**Website:** 

## Description

<!-- Why should we list your suggestion? Anything else, that you wish us to know? -->


### Required features:

<!-- DoH and DoT are supported natively by platforms like Firefox and Android (< 9) -->

* [ ] supports DoH or DoT <!-- We love DNSCrypt, but there is already https://github.com/DNSCrypt/dnscrypt-resolvers which is directly supported by dnscrypt-proxy, so we don't consider useful to list providers only supporting it.  -->
* [ ] supports DNSSEC <!--  https://dnssec.vs.uni-due.de/ can test your current DNS provider. -->
* [ ] doesn't log IP addresses during normal operation <!-- If your suggestion logs, please compare its privacy policy with other servers on our table that keep logs. -->

#### Desired features

* [ ] QNAME minimization: YES or NO? <!-- if you have access to the dig command, `dig +short txt qnamemintest.internet.nl` -->
