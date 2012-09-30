jQuery ->
  $('#atleta_ultimo_pagamento').datepicker
    dateFormat: 'dd-mm-yy'
    dayNames: ["Domingo", "Segunda-Feira", "Terça-Feira", "Quarta-Feira", "Quinta-Feira", "Sexta-Feira", "Sábado"]
    dayNamesMin: ["Do", "Se", "Te", "Qa", "Qi", "Se", "Sa"]
    dayNamesShort: ["Dom", "Seg", "Ter", "Qua", "Qui", "Sex", "Sáb"]
    monthNames: ['Janeiro','Fevereiro','Março','Abril','Maio','Junho', 'Julho','Agosto','Setembro','Outubro','Novembro','Dezembro']
    monthNamesShort: ['Jan','Fev','Mar','Abr','Mai','Jun', 'Jul','Ago','Set','Out','Nov','Dez']

    $(".fadeout").delay(5000).fadeOut(1000)
    $(".close").click ->
      $(this).parent().hide()