---

📄 inventory.md

NoHeroes App — Sistema de Inventário

O Sistema de Inventário gerencia todos os itens que o jogador possui: equipamentos, consumíveis, materiais, raridades, baús, cosméticos, essências, runas, seivas, fragmentos e itens sombrios.
Ele integra diretamente com crafting, loja, sombra, classes e progressão.


---

1. Estrutura Geral

O inventário é dividido em abas organizadas, com filtros e ordenação avançada.

1.1 Abas Oficiais

Equipamentos

Consumíveis

Materiais

Essências

Runas

Seivas

Fragmentos

Relíquias

Baús

Cosméticos / Acessórios

Itens Sombrios (itens vinculados à conta; não podem ser vendidos ou removidos)



---

2. Capacidade e Slots

2.1 Limite

Início: 5 slots

Máximo: 200 slots


2.2 Expansão

Cada novo slot custa 5 ouro + (incremento +5 por slot)

A cada 10 slots, o custo adicional aumenta em +5

Sem limite diário de expansão


2.3 Peso

Não existe peso.

Apenas slots determinam capacidade.



---

3. Empilhamento (Stack)

Itens que empilham até x99:

materiais

essências

seivas

runas


Itens que não empilham:

equipamentos

relíquias

cosméticos

itens sombrios

baús



---

4. Equipamentos

4.1 Slots de Equipamento

O avatar pode equipar:

Arma

Secundária (escudo / adaga / foco mágico)

Capacete

Peitoral

Ombreiras

Luvas

Calças

Botas

Cinto

Acessório 1

Acessório 2

Relíquia



---

4.2 Durabilidade

Ranks E–B → possuem durabilidade, quebram

Ranks A–S → nunca quebram


Ao quebrar, itens:

→ viram materiais automaticamente
→ produzem materiais equivalentes à sua raridade


---

4.3 Reparos

Realizados exclusivamente no Ferreiro

Preço depende do Rank do item e do nível do jogador



---

4.4 Restrição por Classe e Nível

Equipamentos só podem ser usados se atenderem à classe

Se for permitido equipar um item de nível superior:


→ funciona, mas aplica penalidade no desempenho


---

4.5 Locks

Jogadores podem trancar itens para evitar:

venda

desmantelamento

descarte



---

5. Interações com Itens

5.1 Ações permitidas

Desmantelar

Transformar materiais

Encantar equipamentos

Marcar favoritos

Filtrar e ordenar


Fundir itens não existe como sistema base.


---

6. Inspeção de Itens

A inspeção detalhada mostra:

Atributos

Raridade

Rank

Origem (drop, crafting, evento, sombrios)

Lore do item

Propriedades ativas/passivas

Requisitos de classe/nivel



---

7. Itens Sombrios

Itens sombrios:

representações in-game de produtos reais (ebooks, mangás etc.)

ocupam slot

possuem aba exclusiva

não podem ser:

vendidos

destruídos

desmantelados

equipados



Possuem efeitos passivos únicos.


---

8. Baús

Baús são armazenados no inventário

Abrir baús pode exigir chave

Baús podem conter:

itens acima da raridade do jogador

materiais

seivas

itens lendários / míticos / divinos / sombrios


Baús exigem dupla confirmação quando tiverem drop raro garantido



---

9. Descarte & Desmantelar

9.1 Exclusão

Jogador não pode excluir itens manualmente.

9.2 Desmantelar

Sempre possível, exceto:

itens sombrios

itens vinculados à progressão narrativa (raros casos)


Itens raros / épicos / míticos / lendários → exigem dupla confirmação.


---

10. Economia x Inventário

Jogador não pode vender itens diretamente

Apenas via leilão

Preços influenciados por reputação da região/facção (quando implementado)



---

11. Visual & Apresentação

11.1 Rarezas e efeitos visuais

Raridades seguem:

Comum: cinza

Incomum: verde

Raro: laranja

Épico: roxo

Lendário: branco brilhante

Mítico: dourado brilhante

Secreto: prismático (pulsante)

Divino: dourado + animação celestial

Sombrio: preto com fumaça / partículas


(Efeitos animados podem ser adicionados futuramente.)


---

11.2 Preview do Avatar

O inventário mostra o avatar 2D equipado com:

roupas

armas

acessórios

itens especiais



---

11.3 Interface

Inventário é:

C) Meio-termo
Equilíbrio entre minimalismo e detalhes.


---

11.4 Modos de visualização

grid grande

grid pequeno



---

11.5 Indicadores

itens novos exibem “!”

itens trancados mostram cadeado

itens com penalidade exibem ícone vermelho

itens corrompidos têm moldura especial



---

12. Filtros e Ordenação

12.1 Filtros

por tipo

por classe

por raridade

por rank



---

12.2 Ordenações

raridade

mais novo

mais antigo



---

13. Shadow System x Inventário

13.1 Corrupção de Itens

A sombra pode corromper itens.

Itens corrompidos:

ficam MAIS fortes (bônus altos)

ganham efeitos negativos (debuffs permanentes ou temporários)

possuem borda distorcida / animada

podem influenciar Shadow Quests


Quanto mais profunda a Sombra → maior a chance de corromper itens.


---

13.2 Shadow Drops

Shadow Quests podem dar:

itens únicos

itens sombrios especiais

itens corrompidos raros

materiais de sombra



---
