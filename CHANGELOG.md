[//]: # ($FrauBSD: bhotkeys-extend/CHANGELOG.md 2026-10-03 20:59:30 -0700 Devin Teske $)

# Changelog

Newest first. Each section is a git tag; the bullets are what landed
in that tag (from the previous tag, or from the start of the
repository for 1.0).

## 1.4 (2026-10-03)

- drop the `bvwm-super-menu-handler` call from `display-extend`;
  `bhotkeys` marks the Super chord
- Wrap long lines in display-extend

## 1.3 (2026-10-03)

- format the Makefile and shell scripts
- show extend and laptop glyphs with `bosd`

## 1.2 (2026-10-03)

- take the RandR subroutine from `bhotkeys-display-common`

## 1.1 (2026-10-03)

- ship `display-extend` and `display-laptop-only`

## 1.0 (2026-10-03)

- `extend` plugin: Super+E runs display-extend --toggle; Super+X
  under Xfce; offered at the greeter
