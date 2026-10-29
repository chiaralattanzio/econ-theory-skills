---
name: claims-audit
description: Write and audit prose in economics and finance theory papers so every claim matches what the model proves. Use when revising or drafting an abstract, introduction, conclusion, results discussion, cover letter or slides for a theory paper, and when the user asks to "check for overclaiming", "audit the claims", "is this supported", "tone this down" or "make sure the abstract matches the results". Maps each claim to the proposition that supports it, flags overclaiming and underclaiming, undefined or buzzword terms, and misframed reference papers, and proposes calibrated rewrites.
---

# Claims audit

Every sentence in a theory paper should be backed by a specific result, assumption or cited paper, and be no stronger and no weaker than that backing. Overclaiming invites rejection; underclaiming hides the contribution.

This skill is about what the paper claims. For how the text is organised and written (paragraph structure, signposting, redundancy), use the `paper-edit` skill.

## Step 1: Build the claim map

Before writing or auditing anything, read the model and results sections and list the paper's formal results:

- Each Proposition, Lemma, Corollary and Claim: what it states, under which parameter restrictions, and whether it is an existence, uniqueness, comparative-statics or welfare result.
- Results that only hold on part of the parameter space, or only in a numerical example.
- The paper's reference papers (the models it builds on and positions against).

Keep this map short. It is the yardstick for everything below.

## Step 2: Rules for any prose you write or revise

- **Calibrate strength, in both directions.** "Can", "may", "in our model" for possibility results and examples; "always" or "for all" only when the proposition proves it for all admissible parameters. A numerical illustration is not a theorem. Equally, do not hedge a result the paper proves in general: if a proposition holds for all admissible parameters, say so plainly.
- **Use the paper's own vocabulary.** Do not introduce terms the paper never defines (e.g., "customization", "invisible"). If a new term helps, define it or ask.
- **Anchor on the right papers.** Frame contributions against the paper's own reference papers. Do not substitute a different canonical paper (e.g., Kreps-Scheinkman for the paper actually built on) without asking.
- **Abstracts stay high-level.** Question, mechanism in words, main result, implication. No model mechanics or notation. Around 200 words, about 150 for top journals, unless the user gives a limit. Report the word count accurately.
- When revising a paragraph, return the revised paragraph plus a one-line note on what changed and why.

## Step 3: Audit (when asked to check existing text)

Go sentence by sentence through the requested text. Report only the sentences with problems, as a table ordered by relevance: problems a referee would hold against the paper first (overclaims, misframed references, inconsistencies, unsupported claims), then underclaims and undefined terms.

| # | Sentence (short quote) | Problem | Backing in paper | Suggested rewrite |
|---|---|---|---|---|

Problem types:
- **Overclaim:** stronger than the backing result (scope, generality, causality, sign).
- **Misframed reference:** a cited paper credited with something it does not say, or the wrong benchmark.
- **Inconsistent:** contradicts another part of the paper, the slides or the abstract.
- **Unsupported:** no result, assumption or citation backs it.
- **Underclaim:** weaker than the backing result (hedging a result proved in general, burying a main result).
- **Undefined term:** term not defined in the paper, or used with a different meaning than elsewhere.

After the table, list any claim you could not verify (e.g., a citation you have not read) instead of guessing. Do not edit the files during an audit unless the user asks; when they do, apply only the rewrites they approve.
