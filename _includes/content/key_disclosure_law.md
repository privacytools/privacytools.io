{% include section_config section=include.section lang=include.lang %}

<h1 id="kdl" class="anchor"><a href="#kdl"><i class="fas fa-link anchor-icon"></i></a> {{ lang.title }}</h1>
### {{ lang.subheading }}

{{ lang.description }}

<!-- Chart of key disclosure law in some countries -->
<div class="row mb-2">

  {% include components/panel.html color="danger"
  title=lang.apply
  list='
 - [Antigua and Barbuda](https://en.wikipedia.org/wiki/Key_disclosure_law#Antigua_and_Barbuda) <div class="float-right"><span class="flag-icon flag-icon-ag"></span></div>
 - [Australia](https://en.wikipedia.org/wiki/Key_disclosure_law#Australia) <div class="float-right"><span class="flag-icon flag-icon-au"></span></div>
 - [Canada](https://en.wikipedia.org/wiki/Key_disclosure_law#Canada) <div class="float-right"><span class="flag-icon flag-icon-ca"></span></div>
 - [France](https://en.wikipedia.org/wiki/Key_disclosure_law#France) <div class="float-right"><span class="flag-icon flag-icon-fr"></span></div>
 - [India](https://en.wikipedia.org/wiki/Key_disclosure_law#India) <div class="float-right"><span class="flag-icon flag-icon-in"></span></div>
 - [Ireland](https://en.wikipedia.org/wiki/Key_disclosure_law#Ireland) <div class="float-right"><span class="flag-icon flag-icon-ie"></span></div>
 - [Norway](https://edri.org/norway-introduces-forced-biometric-authentication/) <div class="float-right"><span class="flag-icon flag-icon-no"></span></div>
 - [Russia](https://www.bloomberg.com/news/articles/2018-03-20/telegram-loses-bid-to-stop-russia-from-getting-encryption-keys) <div class="float-right"><span class="flag-icon flag-icon-ru"></span></div>
 - [South Africa](https://en.wikipedia.org/wiki/Key_disclosure_law#South_Africa) <div class="float-right"><span class="flag-icon flag-icon-za"></span></div>
 - [United Kingdom](https://en.wikipedia.org/wiki/Key_disclosure_law#United_Kingdom) <div class="float-right"><span class="flag-icon flag-icon-gb"></span></div>
  '
  %}

  {% include components/panel.html color="warning"
  title=lang.may_apply
  list='
 - [Belgium *](https://en.wikipedia.org/wiki/Key_disclosure_law#Belgium) <div class="float-right"><span class="flag-icon flag-icon-be"></span></div>
 - [Finland *](https://en.wikipedia.org/wiki/Key_disclosure_law#Finland) <div class="float-right"><span class="flag-icon flag-icon-fi"></span></div>
 - [New Zealand](https://en.wikipedia.org/wiki/Key_disclosure_law#New_Zealand) (unclear) <div class="float-right"><span class="flag-icon flag-icon-nz"></span></div>
 - [The Netherlands *](https://en.wikipedia.org/wiki/Key_disclosure_law#The_Netherlands) <div class="float-right"><span class="flag-icon flag-icon-nl"></span></div>
 - [United States](https://en.wikipedia.org/wiki/Key_disclosure_law#United_States) (see related information) <div class="float-right"><span class="flag-icon flag-icon-us"></span></div>
  '
  %}

  {% include components/panel.html color="success"
  title=lang.dont_apply
  list='
 - [Czech Republic](https://en.wikipedia.org/wiki/Key_disclosure_law#Czech_Republic) <div class="float-right"><span class="flag-icon flag-icon-cz"></span></div>
 - [Germany](https://en.wikipedia.org/wiki/Key_disclosure_law#Germany) <div class="float-right"><span class="flag-icon flag-icon-de"></span></div>
 - [Poland](https://en.wikipedia.org/wiki/Key_disclosure_law#Poland) <div class="float-right"><span class="flag-icon flag-icon-pl"></span></div>
 - [Sweden](https://en.wikipedia.org/wiki/Key_disclosure_law#Sweden) (proposed) <div class="float-right"><span class="flag-icon flag-icon-se"></span></div>
  '
  %}

</div>

\* ({{ lang.footnote }})

### {{ general.related_information }}
- <a href="https://en.wikipedia.org/wiki/Key_disclosure_law">Wikipedia page on key disclosure law</a>
- <a href="https://law.stackexchange.com/questions/1523/can-a-us-citizen-be-required-to-provide-the-authentication-key-for-encrypted-dat">law.stackexchange.com question about key disclosure law in US</a>
- <a href="https://www.youtube.com/watch?v=Jt7D4AIfqlQ">DEFCON 20: Crypto and the Cops: the Law of Key Disclosure and Forced Decryption</a>