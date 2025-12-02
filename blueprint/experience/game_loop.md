---

📘 Game Loop — NoHeroes App

> Como o jogador vive Caelum no dia, na semana e ao longo do tempo




---

1. Visão Geral

O NoHeroes não é um “jogo de fase”.
É um ciclo de vida:

o jogador vive no mundo real

executa hábitos e missões

Caelum reage a isso em tempo quase real

a Sombra observa, reage, distorce e recompensa

classe + facção + região + sombra montam uma rotina única


O loop não é rígido, mas tem uma espinha dorsal clara:

1. Abrir o app


2. Ver a Sombra / feedback de Caelum


3. Ver missões do dia


4. Executar hábitos e missões


5. Coletar recompensas e eventos


6. Interagir com regiões / NPCs / facção


7. Encerrar o dia com um “estado” (estável, caótico, exausto, etc.)




---

2. Tempo: Terra x Caelum

O tempo é gerenciado em dois planos:

Terra (tempo real)

hoje, ontem, esta semana, etc.


Caelum (tempo narrativo)

Dia 1, Dia 2, Dia 3… (contador de quantos dias o usuário existe em Caelum)



Regras:

Cada dia calendário em que o usuário loga = +1 dia em Caelum

Se o usuário não abre o app, Caelum “congela”: o contador de dias não sobe, mas a Sombra registra ausência.

O app sempre mostra no topo algo como:

“Dia 47 em Caelum | Nível 12 | Sombra: Estável/Instável”




---

3. Loop Diário (micro-loop principal)

3.1. Abertura do Dia

Quando o usuário abre o app no dia:

1. Tela de entrada

Dia em Caelum

Nível atual

Estado resumido da Sombra (Estável, Tensa, Sombria, Exausta, etc.)



2. Feedback da Sombra

Frase curta baseada no dia anterior:

completou missões?

falhou muito?

exagerou (overwork)?

ficou ausente?




3. Resumo do dia anterior

XP ganho

Ouro/essências

Missões concluídas

Falhas relevantes

Eventos importantes



4. Apresentação do Dia Atual

Missões diárias

Missões individuais relevantes

avisos da facção

notificações da Arca (sistema)

coletas/desbloqueios prontos (baús, crafting, etc.)





---

3.2. Estrutura das Missões do Dia

Cada dia o jogador vê três blocos:

1. Missões Diárias (fixas, configuráveis)

Derivam de hábitos + classe

Ex.: treino, leitura, meditação, escrita, hidratação…

Sempre presentes, mas podem ser editadas pelo usuário (dentro de limites).

2.1. missões individuais (flexíveis)
surgem diariamente ou são criadas no dia dependendo da escolha/necessidade do usuário.

2.2. Missões de Lore. (flexíveis)

Vêm da Arca (sistema), NPCs, facção, regiões, eventos.

Podem ser:

“Visite X região”

“Converse com tal NPC”

“Faça uma missão sombria”

“Complete 3 tarefas de foco mental”




3. Gatilhos de Coleta / Login

Baús diários

Crafting finalizado

Renda passiva de facção

Recompensas de eventos

Drops pendentes





---

3.3. Execução das Missões (ao longo do dia)

Durante o dia real, o jogador:

marca hábitos completados

confirma missões cumpridas

visita regiões (menu + narrativa)

interage com NPCs (textos, escolhas)

acompanha crafting e economia

responde ou ignora eventos da Sombra


Regras gerais:

Cada ação gera XP + Ouro + Essências de forma balanceada.

Falhas ou excessos alimentam o Shadow System.

A facção observa: reputação sobe ou desce conforme desempenho.



---

3.4. Encerramento do Dia

Ao final do dia (ou no próximo login), o app:

1. Calcula o estado final do dia anterior:

Progresso

Falhas

Overwork

Consistência de hábitos



2. Atualiza:

XP e nível

Ouro, essências, itens

Sombra (forma, humor, falas)

Reputação da facção

Registro de Caelum (Dia N → N+1)



3. Gera um relato curto:

“Seu dia em Caelum foi…”

estável / caótico / sombrio / heroico / exausto / vazio / etc.





---

4. Loop Semanal

Toda semana (7 dias reais), o app executa um “ciclo maior”:

4.1. Revisão da Semana

Quantos dias logou

Quantas missões diárias concluiu

Quantas missões individuais fez

Quantos dias falhou tudo

Padrão de overwork x preguiça


Sombra e Caelum reagem:

Sombra muda um pouco mais de forma

NPCs podem comentar a respeito

Pequenos eventos semanais podem disparar

Facção ajusta o “tom” com o jogador


4.2. Recompensas Semanais

bônus de XP

ouro/essências extras

itens simples ou médios

chance de missão especial

chance de evento de Sombra ou de facção


4.3. Ajustes Dinâmicos

Dependendo da semana:

Se o usuário está consistente demais + overwork →

evento de Shadow Boss focado em excesso


Se está falhando muito →

eventos de Sombra caótica, missões de reorganização


Se está equilibrado →

evolução saudável, recompensas estáveis, narrativa positiva




---

5. Loop Mensal

Uma vez por mês (ou a cada 30 dias de Caelum):

5.1. Balanço Geral

Progresso em nível

Progresso em classe (skills, rituais)

Progresso em facção (reputação, missões)

Quantidade de eventos da Sombra

Evolução visual do avatar/sombra


5.2. Eventos Maiores

eventos de facção (guerras, crises, festivais, rituais)

eventos de Caelum (fendas, tempestades, bosses globais)

eventos de sombra (arcos psicológicos maiores)


5.3. Ajustes Estruturais

desbloqueio automático de certas missões longas

rotas exclusivas se o jogador se manteve coerente com seu caminho

avaliação implícita do perfil do jogador (sem mostrar numericamente)



---

6. Como cada Sistema Entra no Game Loop

6.1. Classe

Define quais hábitos o app recomenda e prioriza.

Influencia tipo de missão diária.

Determina tipo de recompensa preferencial (itens, skills, buff).

Afeta falas da Sombra (“Você está traindo sua própria classe”, etc.).


6.2. Facções

Mandam missões específicas semanais/mensais.

Dão renda de facção (ouro, itens, reputação).

Oferecem provas, pedidos, favores.

Podem pressionar ou desaprovar o jogador conforme sua conduta.


6.3. Shadow System

Coleta todos os sinais do dia:

sucesso

falha

ausência

overwork

consistência


Gera:

falas

eventos

bosses internos

debuffs leves

buffs temporários (quando o jogador encara a própria sombra)



6.4. Regiões

São hubs de conteúdo:

cada visita gasta tempo/metas limitadas (ex.: X missões por dia por região)

algumas regiões têm resset diário de drops/missões


Regiões mais perigosas têm:

missões menos frequentes

recompensas maiores

riscos narrativos maiores



6.5. Economia e Crafting

Ouro e essências caem todos os dias por:

missões

facção

regiões


Crafting roda em “timers” ligados a dias reais.

Coletas de crafting finalizado aparecem no início do dia.



---

7. Eventos da Sombra e Overwork

7.1. Falha Normal

Falhou algumas missões → frases, pequenas distorções, missões de correção.


7.2. Falha Grave (acúmulo)

Vários dias seguidos de nada feito.

Sombra ganha forma mais pesada.

Missões sombrias surgem (“Enfrente X”, “Revele Y”, etc.).


7.3. Overwork (perigo do excesso)

Cumprindo tudo demais, sem descanso.

App detecta ritmo nocivo.

Gatilho de Shadow Boss anti-overwork:

narrativas que questionam perfeccionismo

debuffs temporários se insistir

missões de descanso/auto-cuidado viram obrigatórias




---

8. Estados do Jogador (resumo diário/semana)

O game loop trabalha com alguns estados principais que influenciam tudo:

Estável

Disciplinado

Obsessivo (overwork)

Caótico

Apático

Sombra Ativa

Vulnerável

Ascendente


Esses estados são inferidos pelo comportamento e usados para:

falas da Sombra

gatilhos de evento

tipo de missão sugerida

tipo de boss que aparece

reações de NPCs



---

9. Encerramento do Loop

O NoHeroes não tem “fim de ciclo” definitivo.
O game loop é projetado para:

acompanhar o jogador por anos

se ajustar à vida real dele

manter sempre um equilíbrio entre:

desafio

fantasia

auto-conhecimento

progresso tangível

narrativa viva

