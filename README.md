# Econ Theory Skills for Claude

Four skills that help Claude work on economic and finance theory papers the way a careful coauthor would: agree on the model before drafting it, check the logic of proofs, claim no more and no less than the results show, and write for readers who skip around.

| Skill | What it does |
|---|---|
| **model-spec** | Before any LaTeX is written, proposes 2-3 compact candidate setups for a new model, or one for a small change: players, timing and information, choices, equilibrium object, every symbol defined, identities, closest paper. Can briefly solve the candidates to compare them. Waits for your approval, then drafts under strict consistency rules. |
| **proof-check** | Goes through proofs step by step like a careful referee: restates the claim and strategy, checks that each step follows, flags unstated assumptions, unjustified signs, uncovered cases and unchecked deviations, and gives a verdict with suggested fixes. No numerical checks unless you ask. |
| **claims-audit** | Maps every claim in the abstract, introduction, conclusion, cover letter or slides to the result that supports it, and flags overclaiming, underclaiming, undefined terms and misframed references. |
| **paper-edit** | Edits the writing and organisation: one function per paragraph, a role for every sentence, no redundancy, and signposts (roadmap, section openers, explicit cross-references) for readers who jump between sections. |

A typical order: `model-spec` → `proof-check` → `claims-audit` and `paper-edit`.

## Install

### Claude Code (recommended)

In Claude Code, run these two commands:

```
/plugin marketplace add chiaralattanzio/econ-theory-skills
/plugin install econ-theory@econ-theory-skills
```

Then restart Claude Code. The skills appear as `/econ-theory:model-spec`, `/econ-theory:proof-check` and so on. To get updates later, run `/plugin marketplace update econ-theory-skills`.

### Claude app (claude.ai)

Download the `.skill` files from the [`skill-files`](skill-files) folder, then upload each one in **Settings → Capabilities → Skills**.

## Use

Ask in plain words ("set up a model where...", "check the proof of Proposition 2", "audit the abstract for overclaiming", "edit the introduction") and Claude starts the right skill. Or type the skill's name, for example:

```
/econ-theory:model-spec Build a model of bank deposit products where liquidity has one clear definition.
```

Each skill stops for your approval at the key points: before drafting a model, and before changing your files.
