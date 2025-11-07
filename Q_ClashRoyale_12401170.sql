SELECT nome, custo_elixir
FROM cartas
WHERE LOWER(nome) LIKE '%dragão%' OR LOWER(nome) LIKE '%gelo%';

SELECT nome, tag, pontuacao_guerra
FROM clans
WHERE LOWER(regiao) = 'brasil'
  AND (LOWER(nome) LIKE '%br%' OR LOWER(nome) LIKE '%clash%');
  
SELECT nome_usuario, tag
FROM jogadores
WHERE instr(nome_usuario, '_') > 0;

SELECT nome, raridade, custo_elixir
FROM cartas
WHERE custo_elixir BETWEEN 3 AND 4;

SELECT batalha_id, data_batalha, duracao_segundos
FROM batalhas
WHERE duracao_segundos >= 180 AND duracao_segundos < 210;

SELECT nome_usuario, trofeus, nivel
FROM jogadores
WHERE nivel BETWEEN 10 AND 13
ORDER BY trofeus DESC;

SELECT nome, custo_elixir
FROM cartas
WHERE raridade IN ('Lendária', 'Épica')
  AND custo_elixir IN (5, 7);

SELECT nome, tag
FROM clans
WHERE regiao IN ('América do Norte', 'América Latina', 'Brasil');

SELECT j.nome_usuario, c.nome
FROM colecao_cartas AS cc
INNER JOIN jogadores AS j ON cc.jogador_id = j.jogador_id
INNER JOIN cartas AS c ON cc.carta_id = c.carta_id
WHERE c.nome IN ('O Tronco', 'Megacavaleiro', 'Mago Elétrico')
ORDER BY j.nome_usuario;


SELECT j.nome_usuario,j.tag, c.nome AS nome_clan, j.recorde_trofeus
FROM jogadores AS j
INNER JOIN clans AS c ON j.clan_id = c.clan_id
WHERE c.pontuacao_guerra > 70000 AND j.recorde_trofeus BETWEEN 7500 AND 8500;













