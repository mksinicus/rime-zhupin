# rime-zhupin

A Rime schema that splits Mandarin syllables in the style of Zhuyin (Bopomofo), 
similar to Shuangpin (Double Pinyin) but require 3 instead of 2 keys for 
syllables with a glide (For example, *zhuang*, *xian*).

## Dependencies

- 地球拼音 ([terra_pinyin](https://github.com/rime/rime-terra-pinyin)) and its dependencies

## Keymap

Here only the differences from normal Pinyin schema will be listed. 

### Initials (声母)

- v: zh
- i: ch
- u: sh

### Finals (韵母)

*Todo: draw a visual keymap*

- d: ao
- g: ang
- h: (e)ng
- k: ou
- c: ai
- b: an
- n: (e)n
- m: ei

Special combinations with regard to Zhuyin:

- i + h: ing
- u + h: ong
- v + h: iong
- i + n: in
- u + n: un
- v + n: &uuml;n

### Miscellaneous

Pinyin avoids zero-initials except for syllables starting with *a, e, o*. 
For these cases, inspired by Shuangpin implementations, *a, e, o* themselves
are used as initials for such a syllable, and their finals follow. 
Therefore, full input code for *ai* would be `ac`, and
`em` for *ei*, `ok` for *ou*, etc.

## Known issues

- Combinations *ju, qu, xu, yu* cannot be *jv, qv, xv, yv* at input

## Todos

- [ ] Make a luna-pinyin compatible schema
- [ ] Experimental: use not symbols, but letters not used for finals to mark tones
  at input (optional, while normal terra-pinyin ones are preserved). This is 
  also for better compatibility with Trime, who normally gives a distorted keyboard
  layout for terra-pinyin without proper configuration
- [ ] Draw visual keymap
