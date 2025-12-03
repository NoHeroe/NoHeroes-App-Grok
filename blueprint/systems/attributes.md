---

🛡️ ATTRIBUTES SYSTEM — NoHeroes App

A base estrutural que sustenta combate, missões, progressão e identidades de classe.


---

⭐ 1. Visão Geral

O sistema de atributos do NoHeroes define:

o poder bruto do personagem

como ele evolui com nível e classe

quais habilidades ele domina

como ele interage com itens, crafting e facções

como se comportará quando o combate for adicionado

seu desempenho em missões físicas, mentais e espirituais


Ele é construído como um soulslike adaptado, simples na superfície e profundo na prática.

Há 6 atributos principais e dezenas de status derivados.


---

⭐ 2. Atributos Principais (Base do Personagem)

Os atributos base são:

1. Força

Define poder físico bruto:

dano físico

carga/robustez

resistência a impactos

aumenta parte da resistência física


2. Destreza

Define precisão e habilidade:

crítico físico

velocidade

esquiva (evasão)

precisão e agilidade


3. Inteligência

Define capacidade mágica e mental:

dano mágico

crítico mágico

resistência mágica

escalonamento de mana especial (para Vitalistas)


4. Constituição

Define sobrevivência:

HP máximo

resistência física e mágica

escalonamento de resistências

impacto em recuperações


5. Espírito

Define energia espiritual:

recuperação de mana

resistência mental

sensibilidade vitalista

estabilidade emocional (interações indiretas com sombra)

status defensivos derivados


6. Carisma

Define influência e presença:

impacto com NPCs

bônus sociais

facilita rotas narrativas

influencia preços e diálogos

pode gerar missões especiais



---

⭐ 3. Status Derivados (Automáticos)

Os atributos base geram status derivados que compõem o “set completo” do personagem, como:

HP Máximo

Mana Máxima

Velocidade de movimento

Roubo de vida físico

Roubo de vida mágico

Dano crítico físico

Dano crítico mágico

Defesa física

Defesa mágica

Resistência sombria

Resistência elemental

Precisão

Chance de esquiva

Vitalismo (dano verdadeiro)

Regeneração passiva

Redução de dano


Esses status NÃO são atributos distribuíveis.
São consequências dos atributos base + classe + facção + itens.


---

⭐ 4. Distribuição de Pontos

A cada nível o jogador ganha:

→ 1 ponto de atributo para distribuir livremente.

Simples. Direto. Soulslike.

Realocação

O jogador pode: A) realocar pagando ouro
(preço crescente conforme nível)


---

⭐ 5. Scaling de Classe

Todas as classes têm scaling próprio:

Guerreiro → Força + Constituição

Colosso → Constituição + Força (multiplicador pesado)

Ladino → Destreza + Percepção (via Espírito)

Caçador → Destreza + Inteligência

Monge → Espírito + Constituição

Druida → Espírito + Inteligência

Mago → Inteligência (scaling alto)

Tecelão Sombrio → scaling universal (late game, fraco early)


O scaling aumenta nos níveis: 10 → 15 → 20 → 25 → 30 → 40 → 50 → 60 → 70 → 80 → 99.

Essa curva define:

o quão cedo uma classe fica forte

qual é power spike de cada arquétipo

diferença clara entre classes early / mid / late game



---

⭐ 6. HP, Mana e Vitalismo

HP

Calculado por: → Constituição + Nível

Mana

Dois modelos:

1. Usuários não-vitalistas:
Mana = 90% do HP Máximo
(simples, funcional)



Baseado em Constituição.

2. Vitalismo — A Morte e a Força Compartilham a Mesma Barra

Usuários Vitalistas não têm uma barra de estamina separada.

Ao invés disso, eles possuem:

HP base

→ Igual ao HP normal de qualquer classe.

Vitalismo (estamina + energia vital)

→ Calculado como 190% do HP base.

HP Final de um Vitalista

HP total = HP base + Vitalismo
Exemplo:
HP base = 100
Vitalismo = 190
HP total exibido = 290

É uma única barra contínua.
O app não mostra “duas barras”.
É um sistema integrado.


---

⚔️ Como dano funciona para Vitalistas

Todo dano sofrido reduz o HP total (a barra completa).

Não existe diferença visual entre:

vida “real”

vida “vitalista”


Mas internamente:

O primeiro 190% é “vida vitalista”

Os últimos 100% são HP real (se isso zerar → colapso)



---

💥 Como habilidades funcionam para Vitalistas

Vitalistas não gastam mana para habilidades físicas.

Ao invés disso:

Habilidades consomem a barra total de HP.

Ou seja:

toda habilidade “custa vida”

mas essa vida é principalmente o bloco de Vitalismo

se Vitalismo acabar, ainda é possível usar habilidades usando HP real

risco: você pode literalmente se matar usando habilidades sem cautela


Isso cria um gameplay:

agressivo

arriscado

potente

extremamente “soulslike”


Perfeito para classes como Guerreiro, Druida feral, Monge ofensivo, etc.


---

🩸 Poções funcionam diferente para Vitalistas

Poções de cura têm eficácia reduzida:

50% menos cura total

Ou seja:

Vitalistas se curam muito pior, reforçando o estilo de risco.

---

⭐ 7. Resistências

O sistema terá as seguintes resistências:

Física

Mágica

Sombria

Elemental (fogo, gelo, veneno, raio, etc.)


Vitalista não tem resistência.

Resistências escalam com:

→ Constituição + Força + Inteligência


---

⭐ 8. Interações com a Sombra

A Sombra não altera atributos de forma positiva permanente.

A Sombra pode:

reduzir atributos (permanente se extremo)

aplicar debuffs temporários

forçar Shadow Quests


A Sombra influencia mais:

Espírito

Percepção


Alto espírito = mais resistência mental.
Baixa percepção = mais vulnerável a corrupção.


---

⭐ 9. Requisitos e Checks

Atributos NÃO são exigidos para:

armas

armaduras

regiões

missões


A progressão é livre, e o poder vem do:

classe

itens

facção

experiência real

shadow system



---

⭐ 10. Limites, Crescimento e Impactos

Limite de atributos:

→ Não existe limite máximo.

Classes começam com valores diferentes:

Sim, cada classe inicia com distribuições únicas.

Facções:

Dão bônus percentuais, não atributos diretos.


---

⭐ 11. Vitalismo e Atributos

Vitalismo não depende de atributos base.
Mas:

aumenta atributos derivados

aumenta dano verdadeiro

aumenta recuperação

aumenta performance física nas missões reais

desbloqueia skills exclusivas


Sim — Vitalismo aumenta atributos com o tempo
→ sempre via buffs temporários, nunca permanentes.


---

⭐ 12. Complexidade e Filosofia

Complexidade:

→ C: Profundo
Mas com clareza e simplicidade externa.

Estilo:

→ A: Soulslike

Ou seja:

penalidades claras

progressão direta

builds flexíveis

custo alto para erros

resultados poderosos para dedicação



---

⭐ 13. Resumo

O sistema tem:

6 atributos principais impactantes

dezenas de status derivados

scaling sólido de classe

vitalismo como mecânica híbrida

penalidades reais pela Sombra

buffs temporários, nunca permanentes da Sombra

interações profundas com crafting e itens

progressão lenta e pesada, estilo soulslike


É um sistema profundo, robusto e coeso, construído para durar ANOS de conteúdo.


---

✔️ attributes.md FINALIZADO

Pronto para GitHub.


---
