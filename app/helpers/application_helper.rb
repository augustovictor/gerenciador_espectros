#encoding: utf-8
module ApplicationHelper

  def estilo_pagamento_pendente(atleta)
    return 'label label-important' if atleta.ultimo_pagamento.month < Time.now.month
    return 'label label-success' if atleta.ultimo_pagamento.month >= Time.now.month
  end

  def status_atleta(atleta)
    atleta.ultimo_pagamento.month >= Time.now.month
  end

  def inadimplente?(atleta)
    atleta.ultimo_pagamento < Time.now.to_date
  end

  def formata_data(data)
    data.strftime("%d/%m/%Y")
  end

  def meses_pagos_ou_atrasados(atleta)
    ((atleta.ultimo_pagamento - Time.now.to_date.change(day: 1))/30).to_i
  end


  def num_to_month(num_mes)
    case num_mes
      when 1 then return ultimo_mes = 'Janeiro'
      when 2 then return ultimo_mes = 'Fevereiro'
      when 3 then return ultimo_mes = 'Março'
      when 4 then return ultimo_mes = 'Abril'
      when 5 then return ultimo_mes = 'Maio'
      when 6 then return ultimo_mes = 'Junho'
      when 7 then return ultimo_mes = 'Julho'
      when 8 then return ultimo_mes = 'Agosto'
      when 9 then return ultimo_mes = 'Setembro'
      when 10 then return ultimo_mes = 'Outubro'
      when 11 then return ultimo_mes = 'Novembro'
      when 12 then return ultimo_mes = 'Dezembro'
    end
    #End case
  end
  #End num_to_month

end
