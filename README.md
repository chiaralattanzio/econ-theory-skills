# Econ Theory Skills for Claude

Four skills that help Claude work on economic and finance theory papers the way a careful coauthor would: agree on the model before drafting it, check results before claiming them, and write no more than the propositions prove.

| Skill | What it does |
|---|---|
| **model-spec** | Before any LaTeX is written, proposes 2-3 compact candidate setups (players, timing, choices, equilibrium object, every symbol defined, accounting identities) and waits for your approval. Then drafts under strict consistency rules. |
| **model-check** | Treats a model like code under test: audits the notation in the `.tex` source, then writes Python checks for each proposition, identity and equilibrium condition over a parameter grid, and reports what holds and where it fails. |
| **model-variants** | Builds several minimal versions of a model, each under a different key assumption, then compares them as a skeptical referee and recommends one. |
| **claims-audit** | Maps every claim in the abstract, introduction, conclusion or slides to the result that supports it, and flags overclaiming, undefined terms and misframed references. |

A typical order: `model-spec` → `model-check` → (`model-variants` if stuck) → `claims-audit`.

## Install

### Claude Code (recommended)

In Claude Code, run these two commands:

```
/plugin marketplace add chiaralattanzio/econ-theory-skills
/plugin install econ-theory@econ-theory-skills
```

Then restart Claude Code. The skills appear as `/econ-theory:model-spec`, `/econ-theory:model-check` and so on. To get updates later, run `/plugin marketplace update econ-theory-skills`.

### Claude app (claude.ai)

Download the `.skill` files from the [`skill-files`](skill-files) folder, then upload each one in **Settings → Capabilities → Skills**. `model-check` and `model-variants` work best in Claude Code, because they run Python and compile LaTeX on your computer.

## Use

Ask in plain words ("set up a model where...", "check the propositions in model_v6.tex", "audit the abstract for overclaiming") and Claude starts the right skill. Or type the skill's name, for example:

```
/econ-theory:model-spec Build a model of bank deposit products where liquidity has one clear definition.
```

Each skill stops for your approval at the key points: before drafting, before building variants, and before editing your files after an audit.
