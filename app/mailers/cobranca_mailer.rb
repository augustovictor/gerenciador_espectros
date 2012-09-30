class CobrancaMailer < ActionMailer::Base
  default from: "from@example.com"

  def cobranca_email(atleta)
    @atleta = atleta
    mail(to: atleta.email, subject: 'Espectros Football - Mensalidade')
  end
end
