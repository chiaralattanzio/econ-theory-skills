---
name: model-spec
description: Pin down an economic or finance theory model setup before any LaTeX is drafted. Use when the user asks to build, design, simplify, extend or restructure a theoretical model (banking, IO, contracts, corporate finance, asset pricing, regulation), says "new model", "set up the model", "write the model section", or gives a loose research idea that needs a formal model; also when the user wants to "compare specifications" or "explore alternatives" for a model. Proposes 2-3 compact candidate setups for a new model, or one for a small change (players, timing, information, choices, equilibrium object, notation, identities, closest paper), optionally solves the candidates briefly to compare them, waits for the user's approval, then drafts under strict consistency rules.
---

# Model spec

Agree on the model's structure while it is cheap to change. A rejected 15-line spec costs a minute; a rejected full LaTeX draft costs an hour. Never write LaTeX for a model whose setup the user has not approved.

## Step 1: Context

- Read only the files the user names. Say which file you are reading and why. Do not explore old drafts unprompted.
- Identify the target mechanism: the one economic result the model must deliver. If it is unclear, ask one question instead of guessing.
- Note the paper's reference models (the papers the user builds on). Use them as anchors; do not swap in other canonical papers without asking.

## Step 2: Propose candidate setups

- **New model:** propose 2-3 candidate setups.
- **Small change to an existing model** (e.g., adding one friction or changing one assumption): propose one setup, in the same format, showing only what changes and what it affects.

For each candidate, about 15-20 lines. Short and self-consistent beats complete: no tangents, no side remarks, and every line must agree with every other line (same symbols, same timing, same meanings).

1. **Players, timing and information.** Numbered dates, who moves when, and who knows what at each date (what is observable, what is private, what is contractible). Spell out every timing and information element that matters for the result.
2. **Choices.** Each player's choice variables; what is exogenous.
3. **Equilibrium.** The equilibrium concept and the equilibrium object (what is solved for). Make sure it really is an equilibrium: no player has a profitable deviation under the stated rules. Do not label a primitive as an equilibrium outcome, or the reverse.
4. **Notation.** Every symbol with a one-line definition and its domain or restrictions (e.g., 0 < delta < lambda <= 1). Each term means exactly one thing.
5. **Identities.** Balance-sheet, budget and market-clearing identities, written out.
6. **Key trade-off.** Two sentences: the tension in the model and how it delivers the target mechanism.
7. **Closest paper.** The closest existing paper(s) and, in one or two sentences, how this setup differs from them.
8. **Self-check.** Any inconsistency, any term doing double duty, any friction or fee that appears without being in the setup, any parameter restriction still missing.

Then add a short comparison of the candidates (tractability, realism of assumptions, how directly each delivers the mechanism) and recommend one.

**Stop here.** Wait for the user to pick, veto or modify. Do not write LaTeX yet.

## Step 2b (optional): Solve the candidates to choose between them

Only when the user asks, or says they cannot choose between the candidates from the short setups.

- Work through the candidates one after another in this conversation. Do not use parallel subagents: each one re-reads the context and costs more.
- For each candidate, briefly: the equilibrium; the main result with a proof sketch; the assumptions the sketch relies on and any gap you see; a three-sentence summary of the economic insight. No LaTeX files, no extensions, no numerical checks unless the user asks.
- Then a short comparison table:

| Candidate | Delivers the mechanism? | Tractability | Realism of assumptions | Internal consistency | Novelty vs. closest paper | Main referee risk |
|---|---|---|---|---|---|---|

- Recommend one in a short paragraph, with one sentence on why each other candidate lost. If no candidate delivers the mechanism, say so and what blocks it rather than stretching one to fit.
- **Stop.** Wait for the user to pick before drafting (Step 3).

## Step 3: Draft after approval

- Draft exactly the approved setup. If drafting reveals a problem with it, stop and report the problem instead of quietly changing the setup.
- Spell out the full timing and information structure in the text, including elements that play only a minor role and were left out of the short setup.
- Define every symbol at first appearance. One term, one concept, throughout.
- State identities and parameter restrictions explicitly in the text.
- Attribute every effect (comparative statics, policy, welfare) to the channel that actually produces it. Do not credit a policy, friction or mechanism with an effect that comes from somewhere else.
- No extensions or tangents the user did not ask for, including welfare or planner analysis. List ideas in one line each at the end under "Possible extensions".
- For a new version of a model, create a new file (e.g., `model_v6.tex`) unless the user says to edit in place.
- If a LaTeX toolchain is available, compile and report errors only.
- Once the draft has proofs, offer to check their logic with the `proof-check` skill.
