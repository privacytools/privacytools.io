# Contributing Guidelines

Please read this before contributing.

## Rules

- Be nice and respectful.
- English only.
- Be constructive.
- Please feel free to *review changes* in the *files changed* tab of any
  pull request at any time.
- See also our [Code of Conduct](https://github.com/privacytoolsIO/privacytools.io/blob/master/CODE_OF_CONDUCT.md)

## Quality over Quantity

We're trying to keep it simple and promote the best tools, not all of them.

## Software Criteria
### Main
- Easy to use. Could your mother use that tool or service? Usability is most important.
- Cross-platform / Accessible.
- Privacy respecting.
- Open Source / Free Software is preferred but not required.
- Prioritize Products without Vendor Lock-in (decentralized/self-hostable) or data interoperability.

There can be exceptions if no software is available that meet the criteria.

Note: This criteria applies to all of privacytools.io
### Providers
- Prioritize Products by privacy respecting nationality.

### DNS

- supports DoH or DoT (We love DNSCrypt, but there is already https://github.com/DNSCrypt/dnscrypt-resolvers which is directly supported by dnscrypt-proxy, so we don't consider useful to list providers only supporting it).
- supports DNSSEC (https://dnssec.vs.uni-due.de/ can test your current DNS provider).
- doesn't log IP addresses during normal operation (If your suggestion logs, please compare its privacy policy with other servers on our table that keep logs).
- preferably supports QNAME minimization (if you have access to the dig command, `dig +short txt qnamemintest.internet.nl` or `Resolve-DnsName -Type TXT -Name qnamemintest.internet.nl` if you are on Windows 10)

### VPN
- Prioritize Products by privacy respecting nationality.
- Cannot be based in USA or UK.
- Must be accessible via Open Source Software (i.e OpenVPN, WireGuard)
- Use Encryption
- Accept Cryptocurrency
- No logging policy

### Email
- Outside of USA
- Support SMTP SSL
- Accessable Using Open Source Software (i.e IMAP)

### Hardware
- Must be [H-Node Class A](https://h-node.org/wiki/page/en/compatibility-classes) or equivalent (if applicable)
- Must prioritize hardware certifications like [RYF](https://ryf.fsf.org/), [OSHWA](https://certification.oshwa.org/), and OSI when avalible.
- Cannot lock users to a particular platform.

### Software
- Must be able to download over encrypted network (can be a mirror)
- Must be Open Source Software

### Encryption
- Only verifiable encryption is to be trusted

### OSes
- Must state if recommends, depends on, or offers non-free software (contrib)
- No Tracking Policy (opt-in analytics is ok)

## Images

- Provider logos are 200px x 70px ([example](https://www.privacytools.io/assets/img/provider/AirVPN.png))
- Tool logos are 120px x 120px ([example](https://www.privacytools.io/assets/img/tools/ChatSecure.png))
