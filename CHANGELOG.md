[//]: # ($FrauBSD: bhotkeys-extend/CHANGELOG.md 2026-10-04 22:57:47 -0700 Devin Teske $)

# Changelog

Newest first. Each section is a git tag; the bullets are what landed
in that tag (from the previous tag, or from the start of the
repository for 1.0).

## 1.6 (2026-10-04)

- man pages for `display-extend` and `display-laptop-only`

## 1.5 (2026-10-03)

- build the scripts from `.in` files; source the RandR subroutine
  under `@PREFIX@` and exit if it cannot be read
- `display_osd` shows the glyph it is given, with no default
  hold of 5; an omitted hold adds no argument to `bosd`;
  laptop-only passes `mirror-off`

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
