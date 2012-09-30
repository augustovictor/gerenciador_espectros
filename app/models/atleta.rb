#encoding: utf-8

class Atleta < ActiveRecord::Base

  before_save :padronizar_data

  attr_accessible :email, :foto, :nome, :ultimo_pagamento, :posicao, :telefone

  validates :nome, :email, presence: true
  # validate :atleta_ja_em_dia


  default_scope order('nome')

  protected

  def padronizar_data
    self.ultimo_pagamento = self.ultimo_pagamento.change(day: 1)
  end

  def self.inadimplentes
    where('ultimo_pagamento < ?', Time.now.change(day: 1).to_date)
  end

  protected

  # def atleta_ja_em_dia
  #   errors.add(:ultimo_pagamento, 'O atleta já está em dia') if self.ultimo_pagamento >= Time.now.to_date
  # end

end
