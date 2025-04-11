# rime-zhupin | Rime 注拼输入方案

A Rime schema that splits Mandarin syllables in the style of Zhuyin (Bopomofo),
similar to Shuangpin (Double Pinyin) but require 3 instead of 2 keys for 
syllables with a glide (For example, _zhuang_, _xian_, _lüe_).

以注音（ㄅㄆㄇㄈ）的方式分割音节、力求在音系上自然的，基于汉语拼音的、适用于 QWERTY 键盘的 Rime 汉语普通话输入方案。本方案的键位受到双拼启发，但与双拼不同，对于包含 i u ü 介音的汉字，本方案需要三次敲击才能键入。

## Dependencies | 依赖

- 地球拼音 ([terra_pinyin](https://github.com/rime/rime-terra-pinyin))

## Usage | 用法

Copy `toned_zhupin.schema.yaml` to your Rime user directory. Check the comments in the file in case of trouble.

把 `toned_zhupin.schema.yaml` 复制到 Rime 用户目录。如遇问题，请按文件中的注释处理。

## Keymap | 键位

Here only the differences from normal Pinyin schema will be listed. 

Inputs with this schema are on the left, and their corresponding Pinyin on the
right.

以下仅列出与拼音（全拼）输入方案相异的地方。左为键位，右为对应的拼音。

### Initials | 声母

- v: zh
- i: ch
- u: sh

### Finals | 韵母

- d: ao
- g: ang
- h: (e)ng
- f: ou
- x: ai
- b: an
- n: (e)n
- c: ei

Special combinations with regard to Zhuyin:

以下是与注音相对应的稍特殊的组合：

- i + h: ing
- u + h: ong
- v + h: iong (`[jqx]uh` = [jqx]iong)
- i + n: in
- u + n: un
- v + n: &uuml;n
- u + c: ui

Please note that _ü_ preceeded by _j, q, x, y_ are still reached 
with `u` not `v`. This is not a 1:1 port of Zhuyin.

请注意：韵母 _ü_ 在与 _j, q, x, y_ 相接的情况仍通过 `u` 而非 `v` 来输入。

v2.0: `[jqxy]` is now `[jqxy]i` by default when *i* here is a glide. For example, `jn` yields _jin_, `jf` yields _jiu_, `jaxg` yields _jia xiang_.

v2.0: `[jqxy]` 开头的介母字默认带 i 介音。

### Tones | 声调

- q: 1
- w: 2
- r: 3
- s: 4

### Miscellaneous | 其他

Pinyin avoids zero-initials except for syllables starting with *a, e, o*. 
For these cases, inspired by Shuangpin implementations, *a, e, o* themselves
are used as initials for such a syllable, and their finals follow. 
Therefore, full input code for *ai* would be `ax`, and
`ec` for *ei*, `of` for *ou*, etc.

像许多双拼方案一样，在使用本方案输入零声母字时，需要重复韵母的拼音首字母。比如，用 `ax` 输入拼音 _ai_，用 `ec` 输入拼音 _ei_，用 `of` 输入拼音 _ou_。

## Todos | 待办

- [x] IMPORTANT: A Chinese README
- [x] ~~Make a luna-pinyin compatible schema~~ aborted
- [x] ~~Fork a schema that still use terra-pinyin-like tone markers~~ aborted
- [ ] Draw a visual keymap
- [ ] ~~Handle `preedit` rules to show valid pinyin rather than the input~~
      Aborted in favor of displaying Bopomofo

## Credits | 致谢

This schema is heavily inspired by zaqzrh's [Tone-double_pinyin](https://github.com/zaqzrh/Tone-double_pinyin/)
schema. I would like to fork it, but since it does not provide a license, I didn't
risk doing so.

本方案的实现方式受 zaqzrh 的[带调双拼](https://github.com/zaqzrh/Tone-double_pinyin/)启发。原作者没有注明许可证，所以我没有 fork 而是新开了仓库。
