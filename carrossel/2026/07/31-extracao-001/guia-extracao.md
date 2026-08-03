# 🧠 O Mapa da Extração — Fable 5

> **IA4Biz** · ia4biz.com.br · @ia4bizz
> O modelo é temporário. O que você extrai, fica.

O filtro antes de qualquer prompt: **"um modelo mais barato refaz isso amanhã?"**
Se sim, pula. Se não, é isso que você extrai hoje.

---

## Jogada 1 — O Padrão (teu CLAUDE.md)

Cola no Fable 5, na raiz do teu projeto:

```
Leia todo o meu projeto e o meu CLAUDE.md atual (se existir). Reescreva-o como
um contrato checável, não como conselhos. Inclua:
1. As convenções que eu já sigo no código, escritas como regra objetiva.
2. Os 10 erros que um modelo mais fraco cometeria neste projeto, cada um com a
   regra que o bloqueia.
3. Minha régua de qualidade como critério verificável (comando, teste ou
   checagem), nunca adjetivo.
4. As 3 skills que mais me economizariam horas neste projeto, escritas por
   inteiro em .claude/skills/<nome>/SKILL.md.
Escreva tudo para que um modelo mais fraco consiga seguir do zero.
```

**Ativo que fica:** todo modelo que chegar depois lê essa camada primeiro.

---

## Jogada 2 — O Consultor (roadmap do negócio)

```
Você é meu consultor sênior. Contexto: [descreva teu negócio em 5 linhas —
oferta, preço, clientes, canais, onde teu tempo vai hoje].
1. Audite: oferta, preço, funil e uso do meu tempo. Aponte o que está errado
   com franqueza.
2. Roadmap ranqueado por retorno esperado, o maior primeiro.
3. Para cada item: o porquê, os passos, e a instrução pronta para um modelo
   mais barato executar amanhã.
4. As 3 coisas que devo PARAR de fazer, com o motivo por escrito.
Salve tudo em ROADMAP.md.
```

**Ativo que fica:** amanhã o modelo comum só executa o doc que ele deixou.

---

## Jogada 3 — O Segundo Cérebro (vault Obsidian)

```
Faça uma pesquisa profunda sobre [teu nicho / concorrente / dor do cliente].
Não me entregue um relatório: atomize. Para cada insight, crie UMA nota
Markdown com título claro, 3-8 linhas, e links [[assim]] para as notas
relacionadas. Estruture como vault do Obsidian em ./vault/. Mínimo de 40
notas linkadas, nenhuma página órfã.
```

**Ativo que fica:** o vault vira o contexto que toda sessão futura lê.

---

## Jogada 4 — As Metas (/goal + workflows no backlog)

```
Aqui está meu backlog: [cole a lista]. Defina o critério de pronto verificável
de cada item. Trabalhe em loop até bater o critério: execute, rode a prova
(teste/comando/screenshot), e só marque como feito com a evidência colada.
Dispare sub-tarefas em paralelo quando forem independentes. Teto de custo por
rodada: [defina]. Pare e me chame se 3 ciclos não avançarem.
```

**Ativo que fica:** roda enquanto você dorme, com prova em cada entrega.

---

## Jogada 5 — O Gravador (comece por esta se só tem 1 hora)

Crie `.claude/skills/gravador/SKILL.md`:

```markdown
---
name: gravador
description: Sempre que resolver um problema difícil (bug cabeludo, decisão
  de arquitetura, integração complicada), grave COMO pensou antes de encerrar.
---

Ao resolver algo difícil, escreva UMA nota em ./aprendizados/AAAA-MM-DD-<slug>.md:

1. **O problema** em 2 linhas.
2. **A abordagem** que funcionou, passo a passo.
3. **O que decidi NÃO fazer e por quê** (a parte mais valiosa).
4. **A regra reusável** que o próximo modelo deve aplicar em casos parecidos.

Escreva para que um modelo mais fraco siga do zero, sem este contexto.
```

### Wiring no CLAUDE.md

Adicione ao final do teu `CLAUDE.md`:

```
## Autoaprendizado
Ao concluir qualquer tarefa difícil, use a skill `gravador` antes de encerrar.
No início de cada sessão, leia os 3 aprendizados mais recentes de ./aprendizados/.
```

**Ativo que fica:** converte o resto do teu dia em ativo permanente.

---

## A ordem, se o tempo é curto

**5 → 4 → 1 → 2 → 3.** Cada jogada deixa um ativo que o modelo barato usa pra sempre.

Dúvidas? Chama a gente no direct **@ia4bizz** — IA aplicada a negócio é o nosso trabalho.
**IA4Biz · IA for business · ia4biz.com.br**
