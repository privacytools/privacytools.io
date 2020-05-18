# Contributing Guidelines

Please read this document in full before contributing.

- [Rules](#rules)
- [Quality over Quantity](#quality-over-quantity)
- [Software Criteria](#software-criteria)
  - [Main (All Software)](#main)
  - [Providers](#providers)
    - [DNS](#dns)
    - [VPN](#vpn)
    - [Email](#email)
  - [Hardware](#hardware)
  - [Software](#software)
  - [Encryption](#encryption)
  - [Operating Systems](#operating-systems)
- [Images](#images)
- [Licensing](#licensing)
- [Contributing via email](#contributing-via-email)

## Rules

- Be nice and respectful.
- English only.
- Be constructive.
- Please feel free to *review changes* in the *files changed* tab of any
  pull request at any time.
- See also our [Code of Conduct](https://github.com/privacytools/.github/blob/master/CODE_OF_CONDUCT.md)

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

Note: This criteria applies to all of the PrivacyTools website and recommendations.

### Providers

- Prioritize Products by privacy respecting nationality.

### DNS

- Supports DoH or DoT (We love DNSCrypt, but there is already https://github.com/DNSCrypt/dnscrypt-resolvers which is directly supported by dnscrypt-proxy, so we don't consider useful to list providers only supporting it).
- Supports DNSSEC (https://dnssec.vs.uni-due.de/ can test your current DNS provider).
- Doesn't log IP addresses during normal operation (If your suggestion logs, please compare its privacy policy with other servers on our table that keep logs).
- Preferably supports QNAME minimization (if you have access to the dig command, `dig +short txt qnamemintest.internet.nl` or `Resolve-DnsName -Type TXT -Name qnamemintest.internet.nl` if you are on Windows 10)

### VPN

See https://www.privacytools.io/providers/vpn/#criteria for more details.

- Prioritize Products by privacy respecting nationality.
- Cannot be based in USA or UK.
- Must be accessible via Open Source Software (e.g. OpenVPN, WireGuard)
- Use Encryption
- Accept Cryptocurrency
- No logging policy

### Email

- Operating outside the USA or other Five Eyes countries.
- Encrypts account data at rest.
- Integrated webmail encryption provides convenience to users who want improve on having no E2EE encryption.
- Protect sender's IP address. Filter it from showing in the Received header field.
- Don't require personally identifiable information (PII) besides username and password.
- Privacy policy that meets the requirements defined by the GDPR
- Protection of webmail with two-factor authentication (2FA), such as TOTP.
- DNSSEC support.
- No TLS errors/vulnerabilities when being profiled by tools such as Hardenize, testssl.sh or Qualys SSL Labs
- A valid MTA-STS and TLS-RPT policy.
- Valid DANE records.
- Valid SPF, DKIM and DMARC, with the policy p value set to either none, quarantine or reject.
- A server suite preference of TLS 1.2 or later and a plan for Deprecating TLSv1.0 and TLSv1.1.
- SMTPS submission, assuming SMTP is used.
- Website security standards such as:
  HTTP Strict Transport Security
  Subresource Integrity if loading things from external domains.
- Public-facing leadership or ownership.
- Must self host analytics (no Google Analytics etc) along with compling with DNT (Do Not Track).
- No claims of 'anonymity 100%' or 'unbreakable encryption'


### Hardware

- Must be [H-Node Class A](https://h-node.org/wiki/page/en/compatibility-classes) or equivalent (if applicable)
- Must prioritize hardware certifications like [RYF](https://ryf.fsf.org/), [OSHWA](https://certification.oshwa.org/), and OSI when available.
- Cannot lock users to a particular platform.

### Software

- Must be able to download over encrypted network (can be a mirror)
- Must be Open Source Software

### Encryption

- Only verifiable encryption is to be trusted

### Operating Systems

- Must state if recommends, depends on, or offers non-free software (contrib)
- No Tracking Policy (opt-in analytics is ok)

## Images

- SVG file format is strongly preferred. PNG files can be used as a fallback if images are too complex or otherwise unsuitable as a vector format.
- Provider logo dimensions are 384px x 128px ([example](https://github.com/privacytools/privacytools.io/blob/master/assets/img/svg/3rd-party/mullvad.svg))
- Tool logo dimensions are 120px x 120px ([SVG example](https://github.com/privacytools/privacytools.io/blob/master/assets/img/svg/3rd-party/firefox_browser.svg), [PNG example](https://github.com/privacytools/privacytools.io/blob/master/assets/img/png/3rd-party/claws_mail.png))

## Licensing

The content and original technology of this website is made available under the Creative Commons Zero v1.0 Universal license text. Some files or folders may include works from other projects with separate licenses, and will be marked as such. **By contributing to this repository, contributors do not necessarily agree to sign a CLA or legally transfer their copyright to the project, but they do at a minimum agree to license their work under the current license of this repository: In this case, the Creative Commons Zero v1.0 Universal.**

## Contributing via email

If you have a GitHub account, or are able to create a GitHub account, we ask that you do not submit issues via email.

If you do not have a GitHub account, you may submit software recommendations or other issues via email without creating a GitHub account by emailing `privacytools@fire.fundersclub.com`. The subject line of your email will become the issue title. Your name will be included in the posted issue.

This repository uses [@fire-bot](https://github.com/fire-bot), [a service](https://fire.fundersclub.com) from FundersClub that converts incoming emails to GitHub issues. By sending a message to the email address above, you will be sharing your email address and message content with FundersClub. FundersClub has a privacy policy at [https://fundersclub.com/catalyst-privacy-policy/](https://fundersclub.com/catalyst-privacy-policy/) you should review before using this service. Any attachments you send via this service may be stored indefinitely by FundersClub for the purpose of making them available within the submitted GitHub issue.

You can view an example of the created issues' format at [#1444](https://github.com/privacytools/privacytools.io/issues/1444).
