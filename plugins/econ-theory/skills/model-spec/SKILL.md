---
name: model-spec
description: Pin down an economic or finance theory model setup before any LaTeX is drafted. Use when the user asks to build, design, simplify, extend or restructure a theoretical model (banking, IO, contracts, corporate finance, asset pricing, regulation), says "new model", "set up the model", "write the model section", or gives a loose research idea that needs a formal model. Proposes 2-3 compact candidate setups (players, timing, choices, equilibrium object, notation, identities), waits for the user's approval, then drafts under strict consistency rules.
---

# Model spec

Agree on the model's structure while it is cheap to change. A rejected 15-line spec costs a minute; a rejected full LaTeX draft costs an hour. Never write LaTeX for a model whose setup the user has not approved.

## Step 1: Context

- Read only the files the user names. Say which file you are reading and why. Do not explore old drafts unprompted.
- Identify the target mechanism: the one economic result the model must deliver. If it is unclear, ask one question instead of guessing.
- Note the paper's reference models (the papers the user builds on). Use them as anchors; do not swap in other canonical papers without asking.

## Step 2: Propose 2-3 candidate setups

For each candidate, at most about 15 lines:

1. **Players and timing.** Numbered dates, who moves when, what is observed.
2. **Choices.** Each player's choice variables; what is exogenous.
3. **Equilibrium.** The equilibrium concept and the equilibrium object (what is solved for). Make sure it really is an equilibrium: no player has a profitable deviation under the stated rules. Do not label a primitive as an equilibrium outcome, or the reverse.
4. **Notation.** Every symbol with a one-line definition and its domain or restrictions (e.g., 0 < delta < lambda <= 1). Each term means exactly one thing.
5. **Identities.** Balance-sheet, budget and market-clearing identities, written out.
6. **Key trade-off.** Two sentences: the tension in the model and how it delivers the target mechanism.
7. **Self-check.** Any inconsistency, any term doing double duty, any friction or fee that appears without being in the setup, any parameter restriction still missing.

Then add a short comparison of the candidates (tractability, realism of assumptions, how directly each delivers the mechanism) and recommend one.

**Stop here.** Wait for the user to pick, veto or modify. Do not write LaTeX yet.

## Step 3: Draft after approval

- Draft exactly the approved setup. If drafting reveals a problem with it, stop and report the problem instead of quietly changing the setup.
- Define every symbol at first appearance. One term, one concept, throughout.
- State identities and parameter restrictions explicitly in the text.
- In welfare or planner analysis, attribute each effect to the channel that actually produces it.
- No extensions or tangents the user did not ask for. List ideas in one line each at the end under "Possible extensions".
- For a new version of a model, create a new file (e.g., `model_v6.tex`) unless the user says to edit in place.
- If a LaTeX toolchain is available, compile and report errors only.
- If propositions can be checked numerically, offer to run the `model-check` skill.
