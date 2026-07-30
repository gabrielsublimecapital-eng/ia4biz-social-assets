# Radar IA — formato de carrossel IA4Biz (v2 foto-hero)

> Formato do @therundownai traduzido pra identidade IA4Biz. Validado em 30/07/2026.
> Exemplar de referência: `2026/07/30-radar-001/`. CSS: `template/foto.css`.

## Regra de ouro

**Foto real em tela cheia da PESSOA da notícia (ou da marca), zero cara de template.**
2 notícias por carrossel, no máximo 3. Cada slide = 1 notícia completa.

## Anatomia do slide (1080×1350 · 4:5)

- Foto editorial full-bleed (`object-fit: cover`, ajustar `object-position` pro rosto ficar no terço superior).
- Véu `tinta`: gradiente ink #07110F forte embaixo (texto) e leve no topo (marca).
- Canto sup. esq.: marca `» IA4Biz` (chevron ferrugem + nome cream). Canto sup. dir.: índice mono `01 / 03`.
- Círculos brancos com logo oficial das empresas da notícia (1 a 3, sobrepostos −30px), SEMPRE sobre fundo/ombro, **nunca sobre o rosto**. Logos via media-use (`--type logo`), nunca redesenhados.
- Bloco de texto embaixo: kicker mono `RADAR IA · <data>` em ferrugem-foto #D8492F → manchete Instrument Sans 780 · 63px · cream, 2–3 linhas, tom falado (número forte pode ir em menta).
- Rodapé mono: `@ia4bizz` à esq.; `ARRASTA →` (ferrugem) nos slides internos, `SEGUE @IA4BIZZ` no último.

## Voz da manchete

Contando pra um amigo, com o número na frente: "Um agente da OpenAI invadiu o Hugging Face e rodou dias sem ninguém perceber". Sem consultorês, sem clichê de IA, sem travessão.

## Fontes de foto (licença livre, citar no commit)

Wikimedia Commons (`Special:FilePath/<arquivo>?width=1400`) pra executivos/figuras públicas; press kits oficiais pra produto. Foto entra em `assets/` do radar do dia.

## Produção

```bash
# 1. duplicar a pasta do último radar, trocar fotos (assets/) e editar as manchetes
# 2. logos:  node ~/.claude/skills/media-use/scripts/resolve.mjs --type logo --intent "<marca>" --project .
# 3. render: ~/.claude/tools/qa-lock.sh run bash carrossel/template/render.sh carrossel/2026/MM/DD-radar-NNN
# 4. abrir PNGs pro Gabriel (gate) → ele posta, ou publish_instagram_media com as URLs raw na ordem
```

Cadência: 2–3 radares/semana. `template/base.css` (v1 tipográfico) é legado; não usar em radar.
