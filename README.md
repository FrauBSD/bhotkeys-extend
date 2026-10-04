[//]: # ($FrauBSD: bhotkeys-extend/README.md 2026-10-03 20:44:09 -0700 Devin Teske $)

# bhotkeys-extend

`Super+E` (or `Super+X`) turns a second display on beside the first, or back off.

One [bhotkeys](https://github.com/FrauBSD/bhotkeys) plugin. This
package ships `display-extend` and `display-laptop-only`.
Under Xfce the chord is `Super+X`, because Xfce binds `Super+E` to
the file manager. It is available at the greeter, so a docked laptop
can light the external panel before login.

Home: [FrauBSD/bhotkeys-extend](https://github.com/FrauBSD/bhotkeys-extend)

## Requirements

- `bhotkeys`
- `bhotkeys-display-common`
- `bosd`

## Build / install

```sh
make install    # PREFIX=/usr/local by default
```

Installs `display-extend` and `display-laptop-only` into
`${PREFIX}/bin`, and `extend` into
`${PREFIX}/share/bhotkeys/plugins.d`.

## Plugin

```
id extend
label Extend display
chord Super+e
chord Super+x xfce
command display-extend --toggle
greeter 1
```
