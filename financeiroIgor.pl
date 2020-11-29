quantia_poupada(21000).
ganhos(25000, estavel).
dependentes(4).

poupanca_min(K, Y):- K is Y * 5000.
conta_poupanca(adequada):- quantia_poupada(X), dependentes(Y), poupanca_min(K, Y), X > K.
conta_poupanca(inadequada):- quantia_poupada(X), dependentes(Y), poupanca_min(K, Y), X < K.

renda_min(K, Y):- K is Y * 5000 + (4000 * Y).
renda(adequada):- ganhos(X, estavel), dependentes(Y), renda_min(K, Y), X > K.
renda(inadequada):- ganhos(X, estavel), dependentes(Y), renda_min(K, Y), X < K.

tipo_investidor(conservador):- renda(inadequada), conta_poupanca(inadequada).
tipo_investidor(moderado):- renda(inadequada), conta_poupanca(adequada).
tipo_investidor(agressivo):- renda(adequada), conta_poupanca(adequada).

investimento(poupanca):- tipo_investidor(conservador).
investimento(acoes):- tipo_investidor(agressivo).

investimento(tesouro_direto):- tipo_investidor(conservador).
investimento(cdb):- tipo_investidor(moderado).
investimento(lci_lca):- tipo_investidor(agressivo).





