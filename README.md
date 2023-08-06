# rime-zhupin

A Rime schema that splits Mandarin syllables in the style of Zhuyin (Bopomofo),
similar to Shuangpin (Double Pinyin) but require 3 instead of 2 keys for 
syllables with a glide (For example, *zhuang*, *xian*).

## Dependencies

- 地球拼音 ([terra_pinyin](https://github.com/rime/rime-terra-pinyin)) and its 
  dependencies

## Keymap

Here only the differences from normal Pinyin schema will be listed. 

Inputs with this schema are on the left, and their corresponding Pinyin on the
right.

### Initials (声母)

- v: zh
- i: ch
- u: sh

### Finals (韵母)

*Todo: draw a visual keymap*

- d: ao
- g: ang
- h: (e)ng
- f: ou
- x: ai
- b: an
- n: (e)n
- c: ei

Special combinations with regard to Zhuyin:

- i + h: ing
- u + h: ong
- v + h: iong (`[jqx]uh` = [jqx]iong)
- i + n: in
- u + n: un
- v + n: &uuml;n
- u + c: ui (**Pinyin *ui* cannot be accessed with `ui`!**)

Please note that *&uuml;* preceeded by *j, q, x, y* are still reached 
with `u` not `v`. This is not a 1:1 port of Zhuyin.

### Tones (声调)

- q: 1
- w: 2
- r: 3
- s: 4

### Miscellaneous

Pinyin avoids zero-initials except for syllables starting with *a, e, o*. 
For these cases, inspired by Shuangpin implementations, *a, e, o* themselves
are used as initials for such a syllable, and their finals follow. 
Therefore, full input code for *ai* would be `ac`, and
`em` for *ei*, `ok` for *ou*, etc.

## Known issues

- Combinations *ju, qu, xu, yu* cannot be *jv, qv, xv, yv* at input. 

## Todos

- [ ] IMPORTANT: A Chinese README
- [ ] ~~Make a luna-pinyin compatible schema~~
- [ ] ~~Fork a schema that still use terra-pinyin-like tone markers~~
- [ ] Draw a visual keymap
- [ ] ~~Handle `preedit` rules to show valid pinyin rather than the input~~
      Aborted in favor of displaying Bopomofo

## Credits

This schema is heavily inspired by zaqzrh's [Tone-double_pinyin](https://github.com/zaqzrh/Tone-double_pinyin/)
schema. I would like to fork it, but since it does not provide a license, I didn't
risk doing so.
