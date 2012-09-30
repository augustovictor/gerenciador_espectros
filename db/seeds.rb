#encoding: utf-8

#Atletas
Atleta.delete_all

puts '--Atletas'
atleta_em_dia_1 = Atleta.create(nome: 'Victor Augusto Pinto Costa', posicao: 'WR - #17', telefone: '(83) 8878-3541', email: 'victoraweb@gmail.com', ultimo_pagamento: '01/12/2012')
atleta_em_dia_2 = Atleta.create(nome: 'Diego Barreto Matias', posicao: 'RB - #22', telefone: '(83) 8871-6184', email: 'diiegomatias@gmail.com', ultimo_pagamento: '01/12/2012')
atleta_inadimplente_1 = Atleta.create(nome: 'Marcos Aurélio Crispim', posicao: 'SS - #44', telefone: '(83) 9814-4290', email: 'marcos_aurelio@gmail.com', ultimo_pagamento: '01/05/2012')
atleta_inadimplente_2 = Atleta.create(nome: 'Rinaldo Mitref Carvalho', posicao: 'QB - #18', telefone: '(83) 8898-1634', email: 'rinaldo.mitref@gmail.com', ultimo_pagamento: '01/05/2012')
