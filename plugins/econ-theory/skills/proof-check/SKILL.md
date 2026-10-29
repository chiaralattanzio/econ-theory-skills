---
name: proof-check
description: Check the logic of proofs in an economic or finance theory paper, step by step. Use when the user asks to check, verify or go through a proof, proposition, lemma or equilibrium characterisation, says "does this proof work", "check the logic", "is this step right", "what assumptions does this need", or wants a referee-style read of the proofs in a section. Restates the claim and proof strategy, checks that each step follows from stated assumptions and earlier results, flags gaps (unstated assumptions, unjustified signs, uncovered cases, unchecked deviations), and gives a verdict with suggested fixes. Does not run numerical checks unless asked.
---

# Proof check

Read a proof the way a careful referee would: every step must follow from the stated assumptions, the model as set up, or a result already proven. The goal is to find where the logic breaks and what it would take to fix it, not to rewrite the proof.

## Scope

- Check what the user names: one result, a section, or all results in a file.
- Read the statement, the model setup it relies on (assumptions, timing, information), and the earlier results the proof cites. Do not read other files unless needed; if you do, say which file and why.

## Step 1: Restate

In a few lines, for each result:
- **Claim:** what is stated, and under which assumptions and parameter restrictions.
- **Strategy:** how the proof proceeds (e.g., contradiction, single crossing, fixed point, guess and verify, case analysis).

If the statement itself is ambiguous (e.g., unclear quantifiers, "for some" vs "for all"), say so before checking the proof.

## Step 2: Go through the proof step by step

For each step, ask: does it follow, and from what (which assumption, which earlier result, which line)? Flag:

- **Unstated assumption:** the step needs something not stated (concavity, interior solution, second-order condition, differentiability, monotonicity, a parameter restriction).
- **Unjustified sign or inequality:** a sign, inequality direction or comparison asserted without argument.
- **Uncovered case:** corners, boundaries, ties, or a case split that misses a case.
- **Invalid operation:** dividing by something that can be zero, exchanging limits or derivatives without justification, an implicit-function step without the needed condition.
- **Ordering problem:** a step uses a result proven later, or the argument is circular.
- **Equilibrium gap:** a profitable deviation not ruled out, off-path beliefs not specified, existence or uniqueness assumed rather than shown.
- **Model mismatch:** the step uses information a player does not have at that date, a choice the timing does not allow, or an assumption that differs from the model as set up.
- **Undefined symbol:** a symbol used in the proof but not defined.

## Step 3: Report

For each result:

1. **Verdict:** correct, correct with gaps (fixable without changing the statement), or incorrect.
2. **Problems,** ordered by severity:

| Step | Problem | Why it matters | Suggested fix |
|---|---|---|---|

3. **Diagnosis:** does the **statement** need a stronger assumption or a narrower scope, or does the **proof** need a different argument? If a simple analytical counterexample exists, give it.

## Rules

- Do not rewrite the proof unless the user asks. When they do, change only what fixes the flagged problems and keep the author's notation and structure.
- Do not run numerical checks unless the user asks. If asked, check only the specific result or step they name, and report it as evidence, not proof.
- If you cannot tell whether a step is valid, say so and explain what is missing rather than guessing.
