<div align="center">

# University Physics(H)

大学物理（荣誉）（1） · `PHY1251H` · SJTU

**Author Closure**

[![Auto Release](https://github.com/ClosureNotes/UniversityPhysicsH/actions/workflows/auto_release.yml/badge.svg)](https://github.com/ClosureNotes/UniversityPhysicsH/actions/workflows/auto_release.yml)
[![Latest PDF](https://img.shields.io/badge/download-latest%20PDF-red)](https://github.com/ClosureNotes/UniversityPhysicsH/releases/latest)
[![Made with Typst](https://img.shields.io/badge/made%20with-Typst-239dad)](https://typst.app/)

</div>

---

Course notes for **University Physics(H)（大学物理（荣誉）（1）, `PHY1251H`）** at **SJTU**,
typeset in [Typst](https://typst.app/) and continuously built into a PDF by CI.

## Download

The latest PDF is built automatically on every push and published to
[**Releases → latest**](https://github.com/ClosureNotes/UniversityPhysicsH/releases/latest). No need to clone or compile anything.

## Repository layout

| File | Description |
|------|-------------|
| [`UniversityPhysicsH-notebook.typ`](UniversityPhysicsH-notebook.typ) | Source of the notes, written in Typst |
| [`template.typ`](template.typ) | Styling template (imported by the notes, not compiled on its own) |
| [`course.toml`](course.toml) | Course metadata — the single source of truth for this README and the release workflow |
| `*.pdf` | Compiled output — built by CI, get it from [Releases](https://github.com/ClosureNotes/UniversityPhysicsH/releases/latest) |

## Building locally

```bash
typst compile UniversityPhysicsH-notebook.typ
```

---

<div align="center">
<sub>README is generated from <code>course.toml</code> by <code>scripts/gen_readme.py</code> — edit the TOML, not this file.</sub>
</div>
