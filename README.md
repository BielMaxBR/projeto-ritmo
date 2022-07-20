# Projeto ritmo
###### "Um portal para um submundo musical se abriu, e você tem o trabalho de controlar um robozinho e analizar esse novo mundo harmonicamente caótico, enquanto tenta sobreviver claro 

## Definições gerais
`2D` `scroll view` `ação` `flat` `boss fight` `musical` `rythm`

#### Ambição
_"O meu que desejo com esse projeto é, um jogo desafiador de plataforma em que o mundo é uma trilha sonora viva"_

#### Resumo 
Com um portal aberto a um novo mundo musical, você tem o trabalho de analizar cada um dos biomas encontrados nesse local, e suas respectivas trilhas sonoras, que parecem ter um certo poder. Mas esse mundo percebe que o robô é diferente, e ele vai fazer de tudo pra destruir esse corpo estranho

#### referências
Eletrônica - temática</br>
Megaman - jogabilidade</br>
My Singing Monsters - sistema de trilha</br>

#### concorrência
Jogos Rhythm

#### Proposta
A mecanica de ritmo é baseada em padrões que se repetem, onde tudo que existe no jogo é baseado nesse ritmo, tanto os inimigos quanto o cenário, também possuindo movimentação plataforma estilo megaman

#### Como se joga:
utilizando armas especiais rítmicas, você ativa elas para se defender dos inimigos do jogo, até se encontrar com o chefe desse bioma
#### Requisitos:
Publico alvo: +12

#### Plataformas:
Pc

## Regras do jogo
#### desafios:
Puzzles ritmicos e salas com inimigos inusitados, e uma batalha de chefes super harmoniosa.

#### evolução:
o jogador pode escolher qual sequência de fases irá seguir, no mesmo estilo de Megaman</br>
dependendo dessa sequência, o jogador terá uma progressão diferente. podendo ser mais dificil e direto, ou mais fácil e repetitivo

#### conclusão:
Ao completar todas as fases, é liberado uma fase final secreta, onde acaba a camanha

## Elementos
#### O jogador
Se movimenta pelo cenario, com movimentação plataforma</br>
Sofre dano se for tocado pelos ataques dos inimigos, ou por elementos do cenário</br>
tem um sistema de inventário, com os tipos de armas, e um sistema básico de vida, que pode ser restaurada por itens</br>

#### As fases
Cada uma das fases possui sua própria trilha sonora, e cada elemento do ambiente funciona como um instrumento desta música

#### Os chefes
Oculpa boa parte da tela.</br>
Possui muita vida.</br>
Possui hitbox em posições destacadas, algumas precisam de oportunidades para serem visualizadas.</br>

#### A arma
Cada arma tem seu som e seu projetil, a taxa de disparo acompanha o seu som.</br>
Tem mira de acordo com a arma, podendo ser guiada, direta, diagonal, etc</br>
O jogador pode carregar até 4 armas ao mesmo tempo, mas pode trocar pelo inventário

#### A música
É feita pelos elementos do jogo, em que apenas os elementos visíveis na tela irão interferir na música. os instrumentos que não estiverem visíveis, não serão ouvíveis</br>
O sons das armas acompanha a pista principal na forma que a complemente.</br>

#### O cenário
Sempre monocromático, porém os elementos do game que estiverem emitindo sons, irão mudar de cor e soltar efeitos visuais. 

#### ítens
- _ainda não idealizados_

## Mecanicas
#### ataques do jogador
As armas podem disparar automaticamente, o jogador precisa ativar e desativar manualmente, os disparos seguem o ritmo da música.</br>

#### Sincronia e ritmo
Todo esse sistema é baseado nos monstros de _My singing monsters_, caso tenha dúvida sobre algum destes conceitos, veja este jogo para ter uma melhor ideia
</br>

Toda trilha do jogo funciona em forma de patterns, normalmente com 16 steps.

Cada ação de um elemento no jogo, seja o cenário, player, ou inimigos, será contado como um pattern.

Esses patterns irão se repetir de acordo com a construção da música, em certas partes apenas alguns instrumentos irão tocar seus patterns.

Caso em certa parte da música não houver nenhum instrumento visível para tocar este pattern, ela irá pular direto para um momento com som, para evitar silêncio.


