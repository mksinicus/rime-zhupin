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

This document lists only the differences from the standard Quanpin (Full Pinyin) layout. Key: `Keystroke`: _Pinyin_.

本文仅列出与拼音（全拼）输入方案的不同之处。左为键位，右为对应的拼音。

### Initials | 声母

- `v`: _zh_
- `i`: _ch_
- `u`: _sh_

### Finals | 韵母

- `w`: _u_
- `d`: _ao_
- `g`: _ang_
- `h`: _(e)ng_
- `f`: _ou_
- `x`: _ai_
- `b`: _an_
- `n`: _(e)n_
- `c`: _ei_

### Special Rules for Glides | 介音特殊规则

- `ih`: _ing_
- `uh`: _ong_
- `vh`: _iong_ (`yvh`: _yong_)
- `in`: _in_
- `un`: _un_
- `vn`: _ün_
- `uc`: _ui_

**v2.0**: Letters `j`, `q`, `x`, `y` now automatically include the glide _i_.

**v2.0**: `j`, `q`, `x`, `y` 开头的音节默认带 _i_ 介音。

- `qn`: _qin_
- `jaxg`: _jia xiang_

**v3.0**: The vowel `u` is now consistently input as `w` (joining the zero-initials `a`, `e`, `o`). The vowel `ü` (in `ju`, `qu`, `xu`, `yu`) is now consistently input as `v`. This change redistributes typing load more evenly between hands by assigning more frequent keys to the left hand, and frees the `u` key from representing multiple sounds (`sh`, `u`, `ü`).

**v3.0**: 元音 `u` 现统一使用 `w` 输入（与零声母 `a`, `e`, `o` 规则一致）； `ju`, `qu`, `xu`, `yu` 中的元音 `ü`  现统一使用 `v` 输入。这一变动从平衡双手击键负荷的角度出发，将更常用的键位分配给左手，规避了 `u` 键身兼多职（代表 _sh_、_u_、_ü_ 三个音）的情况。

-   `hwg`: _huang_
-   `hw`: _hu_
-   `ww`: _wu_
-   `yv`: _yu_

### Tones | 声调

- `q`: 1 ¯
- `z`: 2 ´
- `r`: 3 ˇ
- `s`: 4 `

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
- [x] ~~Handle `preedit` rules to show valid pinyin rather than the input~~
      Aborted in favor of displaying Bopomofo

## Credits | 致谢

This schema is heavily inspired by zaqzrh's [Tone-double_pinyin](https://github.com/zaqzrh/Tone-double_pinyin/)
schema. I would like to fork it, but since it does not provide a license, I didn't
risk doing so.

本方案的实现方式受 zaqzrh 的[带调双拼](https://github.com/zaqzrh/Tone-double_pinyin/)启发。原作者没有注明许可证，所以我没有 fork 而是新开了仓库。
