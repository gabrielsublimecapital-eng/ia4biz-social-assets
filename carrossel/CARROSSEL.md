# Radar IA — formato de carrossel IA4Biz

> Formato inspirado no @therundownai, traduzido pra identidade IA4Biz (tokens da landing ia4biz.com.br).
> Criado em 30/07/2026. Primeiro exemplar: `2026/07/30-radar-001/`.

## Estrutura (5–6 slides, 1080×1350 · 4:5)

1. **Capa** — kicker `RADAR IA · <dia da semana>, <data>` + manchete gigante da notícia mais quente (tom falado, palavra de impacto em ferrugem) + sub com as outras chamadas + `ARRASTA →`.
2. **Notícias (3×)** — kicker de categoria (SEGURANÇA / INDÚSTRIA / INFRA / DINHEIRO / MODELOS / STARTUPS) + índice azul `01 / 03` + headline falada + `OS DETALHES` (3 bullets secos, números em bold) + painel `POR QUE IMPORTA` (take de operador, 1–2 frases, sem consultorês).
3. **CTA** — frase de posicionamento (ferrugem no fecho) + `Segue @ia4bizz` + tags mono `+ SALVA PRA DEPOIS + MANDA PRO SÓCIO`.

## Voz (o "humano igual dele")

- Manchete como se estivesse contando pra um amigo: "Rodou dias invadindo. Ninguém percebeu."
- Frase curta. Ponto final. Sem travessão, sem clichê de IA, sem "revolucionário".
- `POR QUE IMPORTA` sempre com opinião de quem opera empresa, não resumo neutro.
- Números concretos em todo slide (US$, %, contagem). Fato → consequência pro negócio.

## Produção

```bash
# 1. duplicar a pasta do último radar e editar os HTML (copy nova)
# 2. renderizar (sempre via qa-lock):
~/.claude/tools/qa-lock.sh run bash carrossel/template/render.sh carrossel/2026/MM/DD-radar-NNN
# 3. abrir PNGs pro Gabriel aprovar (gate obrigatório, nunca publicar direto)
# 4. commit + push (as URLs raw do GitHub alimentam o publish)
# 5. publicar via MCP Meta publish_instagram_media como carrossel, na ordem dos slides
```

Tokens/CSS: `template/base.css` (fonte de verdade visual = landing). Fontes TTF em `template/fonts/`.
Cadência: 1 radar/semana (compatível com ~1 post/dia da conta).
