---

📄 reputation.md

NoHeroes App — Sistema de Reputação

O sistema de reputação controla como NPCs, facções, regiões sociais e o mundo reagem ao jogador.
Ele influencia narrativa, economia, acesso, interações sociais e até matchmaking de combate no futuro.

Reputação é persistente, individual e afetada pelas escolhas do jogador dentro de Caelum.


---

1. Tipos de Reputação

1.1 Reputação com NPCs

Cada NPC possui sua própria reputação individual.

Afeta:

diálogo

missões que ele oferece

recompensas

relação pessoal (arcos, segredos)



---

1.2 Reputação com Facções

Cada facção possui barra própria.

Afeta:

acesso a missões

recompensas

descontos

itens exclusivos

narrativa interna da facção

dificuldade dos testes da facção


Trocar de facção reduz parcialmente a reputação anterior (opção D).


---

1.3 Reputação Social Global (Conduta)

É o “karma social” do jogador.

Afeta:

comportamento no chat

participação em party

prioridade em matchmaking (espera maior para jogadores de má reputação)

conquistas de conduta



---

2. Escala de Reputação

Reputação usa Níveis Nomeados (D):

Nível	Descrição

Hostil	NPC/facção rejeita você, punindo recompensas
Desconfiado	Interação limitada
Neutro	Padrão inicial
Aliado	Benefícios moderados
Leal	Acesso expandido
Devoto	Benefícios máximos e segredos



---

3. Ganhos e Perdas de Reputação

3.1 Como reputação é ganha

Missões

Presentes (somente itens aceitáveis por NPCs específicos)

Eventos

Ações sociais positivas

Conquistas

Jogar em party com aliados

Interações positivas com NPCs


(Não existe sistema de doações.)


---

3.2 Como reputação é perdida

Falhar missões

Abandonar facção

Trocar de facção

Colapso

Shadow Drain (efeitos indiretos)

Diálogos ofensivos

Rejeitar NPC em missões narrativas da classe


Não existe perda diária automática.


---

4. Efeitos da Reputação

4.1 Economia

Preços mais baixos com boa reputação

Preços aumentados com reputação baixa



---

4.2 Acesso

Reputação pode desbloquear:

NPCs especiais

missões secretas

itens exclusivos

história pessoal de NPC


NPCs não bloqueiam diálogo, mas:

dificultam missões

reduzem recompensas

podem aumentar dificuldade de tarefas



---

4.3 Facções

Reputação afeta:

dificuldade do exame de entrada

recompensas das missões

acesso a itens especiais

eficiência dos bônus da facção



---

4.4 Social Global

Afeta prioridade no matchmaking (reputação baixa = espera maior)

Define filtros e permissões no chat global

Dá conquistas exclusivas



---

5. Integrações

5.1 Shadow System

Sem impacto direto no estado da Sombra

Reputação baixa não piora a Sombra

Shadow System não altera reputação

Apenas consequências narrativas indiretas possíveis



---

5.2 Vitalismo

Reputação não influencia Vitalismo.



---

5.3 Battle System

Reputação social altera:

prioridade na fila

possíveis ajustes de balanceamento


Reputação de NPC/facção não altera combate.



---

6. Sistema Técnico

6.1 Armazenamento

Reputação é registrada como: A) Quantidade numérica por tipo, convertida internamente em níveis nomeados.

Exemplo:

0–20 = Hostil

21–40 = Desconfiado

41–60 = Neutro

61–80 = Aliado

81–95 = Leal

96–100 = Devoto


(Valores ajustáveis conforme design final.)


---

6.2 Limite diário

Sim — existe limite diário de ganho de reputação para evitar exploit.


---

6.3 Reset de reputação

Não existe reset de reputação oficial.


---

6.4 Reputações secretas

Sim — certas reputações NÃO aparecem na interface:

facção Chrysalis (parte oculta)

facção secreta (ERROR)

reputações usadas apenas para triggers de eventos



---

6.5 Escopo da reputação

A) Individual por personagem
E como o app só permite 1 personagem por conta, reputação = conta inteira.


---

7. Resumo Final

O sistema de reputação do NoHeroes App:

regula narrativa

define acesso e bloqueios

impacta economia

afeta social/matchmaking

dá missões exclusivas

fortalece ou enfraquece relação com NPCs e facções

não interfere diretamente no Shadow System ou no Vitalismo


É um sistema profundo, persistente e totalmente integrado ao ecossistema de Caelum.


---
