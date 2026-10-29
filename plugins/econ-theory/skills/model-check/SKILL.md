---
name: model-check
description: Verify an economic or finance theory model like code under test. Use when the user asks to check, verify or sanity-check a model, its propositions, equilibrium or comparative statics, says "does this result hold", "check the proofs numerically", "audit the notation", or before presenting a new or revised model draft. Audits notation in the LaTeX source (every symbol defined once, one meaning per term, parameter restrictions stated), then writes Python checks for each proposition, identity and equilibrium condition over a grid of admissible parameters and reports what holds, where it fails, and counterexamples.
---

# Model check

Treat each formal result as a claim to test. Numerical checks are evidence, not proof, but they catch wrong signs, missing restrictions, broken identities and equilibria that are not equilibria before a referee does.

## Step 1: Notation audit

Read the model's `.tex` file(s). Produce a table:

| Symbol / term | Defined where | Meaning | Used where | Problem |
|---|---|---|---|---|

Flag:
- symbols used before (or without) a definition;
- the same symbol or word used for two concepts (e.g., "decay" meaning two different things);
- two symbols for the same concept;
- parameter restrictions used in a proof but never stated (e.g., delta < lambda, lambda <= 1);
- identities (balance sheet, budget, market clearing) that are used but never written out.

## Step 2: Set up the Python environment

- Look for a project virtual environment first (`.venv/`, `venv/`) and use its Python. If none exists, ask before creating one.
- Check that numpy, scipy and sympy are importable before writing checks. Install missing packages into the project environment only, and say so.

## Step 3: Write the checks

Create a `checks/` folder next to the paper, with one file per result (e.g., `checks/test_prop2.py`) plus a shared `checks/model.py` that implements the model's primitives once.

For each Proposition, Lemma, Corollary and Claim:
- Encode the statement exactly as written, including its parameter restrictions.
- Use sympy where the result is symbolic (signs of derivatives, closed forms); otherwise solve numerically with scipy.
- Evaluate on a grid of admissible parameters, plus the boundaries of the admissible region.
- For equilibrium results, check the equilibrium conditions directly: no player has a profitable deviation at the candidate equilibrium, and market clearing and identities hold.
- Check every accounting identity at every grid point.

Implement the model from the paper's text, not from what the result needs. If the text is ambiguous, ask instead of picking the reading that makes the test pass.

## Step 4: Run and report

Run all checks and report:

| Result | What was checked | Grid | Outcome | Counterexample (if any) |
|---|---|---|---|---|

Outcomes: **holds** on the full grid, **holds on part** (describe the region), **fails**, or **could not check** (and why).

For each failure, say which is most likely wrong: the statement (missing restriction, wrong sign), the proof, the model setup, or the check itself. Do not edit the paper or the model to make a check pass. Propose the fix and wait for the user's approval.

Keep the `checks/` folder so the user can rerun the checks after every revision.
