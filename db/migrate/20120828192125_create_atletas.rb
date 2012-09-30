class CreateAtletas < ActiveRecord::Migration
  def change
    create_table :atletas do |t|
      t.string :nome, null: false
      t.string :posicao
      t.string :telefone
      t.string :email, null: false
      t.string :foto, default: 'http://a2.sphotos.ak.fbcdn.net/hphotos-ak-snc7/419797_353467821397083_608530975_n.jpg'
      t.date :ultimo_pagamento, null: false

      t.timestamps
    end
  end
end
