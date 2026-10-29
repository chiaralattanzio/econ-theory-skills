---
name: model-variants
description: Build several minimal versions of an economic or finance theory model in parallel, each under a different key assumption, then compare them as a skeptical referee and recommend one. Use when the user is unsure which specification delivers their target mechanism, has rejected several setups in a row, or asks to "compare specifications", "try different versions of the model", "explore alternatives" or "which modelling choice works best". Each variant gets a solved equilibrium, a numerical check of its main result and a short statement of its insight; the output is a comparison table and a recommendation.
---

# Model variants

Instead of steering one draft out of dead ends, build a few small finished alternatives side by side and choose between them. This costs more compute than a single draft, so agree on the variants first and keep each one minimal.

## Step 1: Agree on the variants

- State the target mechanism (the result the model must deliver) and the fixed elements shared by all variants.
- Propose 3 variants by default (at most 4), each differing in one key assumption (e.g., liquidity as a withdrawal cap vs. an early-access cost; fixed vs. floating rates). One line each.
- **Wait for the user to confirm or edit the list** before building anything.

## Step 2: Build each variant

If a subagent tool is available, build the variants in parallel, one subagent per variant; otherwise build them one after another. Each variant goes in its own folder, `variants/<short-name>/`, and must contain:

1. The setup in the `model-spec` format: players and timing, choices, equilibrium concept and object, notation with restrictions, identities, key trade-off.
2. A minimal LaTeX model: setup, equilibrium characterisation, the main proposition with a proof or proof sketch. If a LaTeX toolchain is available, it compiles.
3. A numerical check of the main proposition on a grid of admissible parameters, following the `model-check` approach.
4. A three-sentence summary of the economic insight.

Keep each variant minimal: no extensions, no welfare section unless the target mechanism is about welfare. Do not touch the user's main paper files.

## Step 3: Referee comparison

Acting as a skeptical referee at a top finance or economics journal, compare the variants:

| Variant | Delivers target mechanism? | Tractability | Realism of assumptions | Internal consistency | Novelty vs. closest literature | Main risk with referees |
|---|---|---|---|---|---|---|

Then:
- Recommend one variant and say why in a short paragraph.
- For each rejected variant, one or two sentences on why.
- Note anything a variant revealed that the recommended one should borrow.

Report results honestly: if no variant delivers the mechanism, say so and explain what blocks it rather than stretching a variant to fit.
