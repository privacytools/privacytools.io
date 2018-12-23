{% include section_config section=include.section lang=include.lang %}

<h1 id="ukusa" class="anchor"><a href="#ukusa"><i class="fas fa-link anchor-icon"></i></a> {{ title }} </h1>
<img src="/assets/img/layout/UKUSA.png" class="img-fluid float-right" alt="UKUSA Agreement" style="margin-left:10px;">
{{ description }}

<!-- chart -->
<div class="row mb-3">
  {% include components/panel.html color="danger"
  title=five_eyes
  list='
  - Australia <div class="float-right"><span class="flag-icon flag-icon-au"></span></div>
  - Canada <div class="float-right"><span class="flag-icon flag-icon-ca"></span></div>
  - New Zealand <div class="float-right"><span class="flag-icon flag-icon-nz"></span></div>
  - United Kingdom <div class="float-right"><span class="flag-icon flag-icon-gb"></span></div>
  - United States of America <div class="float-right"><span class="flag-icon flag-icon-us"></span></div>
  '
  %}

  {% include components/panel.html color="warning"
  title=nine_eyes
  list='
  - Denmark <div class="float-right"><span class="flag-icon flag-icon-dk"></span></div>
  - France <div class="float-right"><span class="flag-icon flag-icon-fr"></span></div>
  - Netherlands <div class="float-right"><span class="flag-icon flag-icon-nl"></span></div>
  - Norway <div class="float-right"><span class="flag-icon flag-icon-no"></span></div>
  '
  %}

  {% include components/panel.html color="secondary"
  title=fourteen_eyes
  list='
  - Belgium <div class="float-right"><span class="flag-icon flag-icon-be"></span></div>
  - Germany <div class="float-right"><span class="flag-icon flag-icon-de"></span></div>
  - Italy <div class="float-right"><span class="flag-icon flag-icon-it"></span></div>
  - Spain <div class="float-right"><span class="flag-icon flag-icon-es"></span></div>
  - Sweden <div class="float-right"><span class="flag-icon flag-icon-se"></span></div>
  '
  %}
</div>