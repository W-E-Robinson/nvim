# nvim

## leader = " " (space)

## remaps
| mode | keymap | effect |
| --- | --- | --- |
| normal | \<leader\>pv | enters vim explorer (:Ex) |
| normal | \<leader\>H | horizontal explorer (:Hex) |
| normal | \<leader\>V | vertical explorer (:Vex) |
| normal | \<leader\>h; | clone current file into a horizontal split |
| normal | \<leader\>v; | clone current file into a vertical split |
| normal | \<leader\>o | close all splits except the one the cursor is in |
| view | J | move code down once |
| view | K | move code up once |
| normal | J | bring code from below line up |
| normal | Ctrl + c | write all and quit (:wqa) |
| insert | Ctrl + c | write all and quit (:wqa) |
| normal + visual | \<leader\>y | copy to system clipboard |
| normal | \<leader\>Y | copy to system clipboard |
| normal + visual | \<leader\>dv | deletes to blackhole register (the void) |
| insert | Ctrl + f | writes open and closed curly braces and places cursor on line between
| normal | \<leader\>sg | begin substitution (:%s) with current word + /g |
| normal | \<leader\>sc | begin substitution (:%s) with current word + /gc |
| normal | \<leader\>/ | begin search (/) with current word |
| normal | \<leader\>\<leader\> | Source file |
| normal | \<leader\>wai | yank file:line to system clipboard |

## plugins
### telescope
| mode | keymap | effect |
| --- | --- | --- |
| normal | \<leader\>pf | search files |
| normal | \<leader\>pg | search files (only git tracked files) |
| normal | \<leader\>pws | search word under cursor in current session |
| normal | \<leader\>pWs | search WORD under cursor in current session (includes punctuation) |
| normal | \<leader\>ps | grep search in current session |
| normal | \<leader\>pS | grep search the last grep search |
| normal | \<leader\>po | list recently opened directories/files |
| normal | \<leader\>tb | list all buffers |

### bufferlist
| mode | keymap | effect |
| --- | --- | --- |
| normal | \<leader\>l | open bufferlist |

### lsp
| mode | keymap | effect |
| --- | --- | --- |
| normal | \<leader\>f | format code in file |
| normal | gd | go to definition |
| normal | gD | go to definition in vertical split |
| normal | K | detail box |
| normal | \<leader\>vd | view full error message |
| normal | \<leader\>cd | see all warnings + errors in quickfix list |
| normal | \<leader\>vca | view code actions |
| normal | \<leader\>vrr | view references |
| normal | \<leader\>vrn | rename |
| normal | Ctrl + h | view calling function's information |

### nvim-cmp
| mode | keymap | effect |
| --- | --- | --- |
| insert | Ctrl + p | move up in list |
| insert | Ctrl + n | move down in list |
| insert | Ctrl + y | select in list |
| insert | Ctrl + space | force complete to open |

### colour
| mode | keymap | effect |
| --- | --- | --- |
| normal | \<leader\>ics | toggle dark and light mode |

### comment
| mode | keymap | effect |
| --- | --- | --- |
| normal + visual | \<leader\>gc | toggle line comment |
| normal + visual | \<leader\>gb | toggle block comment |

### markdown preview
| mode | keymap | effect |
| --- | --- | --- |
| normal | \<leader\>mp | toggle markdown preview |

### neotest
| mode | keymap | effect |
| --- | --- | --- |
| normal | \<leader\>nn | run nearest test |
| normal | \<leader\>nf | run tests in current file |
| normal | \<leader\>np | toggle output panel |

### dap
| mode | keymap | effect |
| --- | --- | --- |
| normal | \<leader\>cb | attach debugger + debug continue |
| normal | \<leader\>ss | debug step over |
| normal | \<leader\>si | debug step into |
| normal | \<leader\>so | debug step out |
| normal | \<leader\>bd | debug toggle breakpoint |
| normal | \<leader\>B | debug set condition breakpoint |
| normal | \<leader\>dr | toggle repl ui |
| normal | \<leader\>ds | show stacks |
| normal | \<leader\>dw | show watches |
| normal | \<leader\>dS | show scopes |
| normal | \<leader\>dc | show console |
| normal | \<leader\>db | show breakpoints |

### undotree
| mode | keymap | effect |
| --- | --- | --- |
| normal | \<leader\>u | view undo tree |

### oil
| mode | keymap | effect |
| --- | --- | --- |
| normal | \<leader\>- | in file: open parent directory in oil file explorer, in explorer: change to oil file explorer |

### claude
| mode | keymap | effect |
| --- | --- | --- |
| normal | \<leader\>ac | toggle claude |
| normal | \<leader\>af | focus claude |
| normal | \<leader\>ar | resume claude |
| normal | \<leader\>aC | continue claude |
| normal | \<leader\>am | select claude model |
| normal | \<leader\>ab | add current buffer |
| visual | \<leader\>as | send to claude |
| normal (file explorers) | \<leader\>as | add file |
| normal | \<leader\>aa | accept diff |
| normal | \<leader\>ad | deny diff |

### nvim-git-blame
| mode | keymap | effect |
| --- | --- | --- |
| normal | \<leader\>bcl | git blame current line |

### git-linker
| mode | keymap | effect |
| --- | --- | --- |
| normal | \<leader\>gy | yank git link |
| visual | \<leader\>gy | yank git link |
| normal | \<leader\>gY | open git link |
| visual | \<leader\>gY | open git link |

### screenkey
| mode | keymap | effect |
| --- | --- | --- |
| normal | \<leader\>sk | toggle screenkey |

### cellular-automaton
| mode | keymap | effect |
| --- | --- | --- |
| normal | \<leader\>mir | make it rain |

### which-key
| mode | keymap | effect |
| --- | --- | --- |
| normal | \<leader\>? | show buffer local keymaps |

### lazy
| mode | keymap | effect |
| --- | --- | --- |
| normal | \<leader\>; | update packages |

[Inspiration](https://github.com/ThePrimeagen/init.lua).
