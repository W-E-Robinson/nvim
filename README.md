# nvim

## leader = " " (space)

## remaps
| mode | keymap | effect |
| --- | --- | --- |
| normal | \<leader\>pv | enters vim explorer (:Ex) |
| normal | \<leader\>H | horizontal explorer (:Hex) |
| normal | \<leader\>V | vertical explorer (:Vex) |
| view | J | move code down once |
| view | K | move code up once |
| normal | J | bring code from below line up |
| normal | Ctrl + c | write all and quit (:wqa) |
| insert | Ctrl + c | write all and quit (:wqa) |
| normal + visual | \<leader\>y | copy to system clipboard |
| normal | \<leader\>Y | copy to system clipboard |
| normal + visual | \<leader\>d | deletes to blackhole register |
| insert | Ctrl + f | writes open and closed curly braces and places cursor on line between
| normal | \<leader\>sg | begin substitution (:%s) with current word + /g |
| normal | \<leader\>sc | begin substitution (:%s) with current word + /gc |
| normal | \<leader\>/ | begin search (/) with current word |
| normal | \<leader\>\<leader\> | Source file |

## plugins
### telescope
| mode | keymap | effect |
| --- | --- | --- |
| normal | \<leader\>pf | search files |
| normal | \<leader\>pg | search files (only git tracked files) |
| normal | \<leader\>pws | search word under cursor in current session |
| normal | \<leader\>pWs | search word under cursor in current session (case sensitive) |
| normal | \<leader\>ps | grep search in current session |
| normal | \<leader\>po | list recently opened directories/files |

### harpoon
| mode | keymap | effect |
| --- | --- | --- |
| normal | Ctrl + m | open harpoon menu |
| normal | Ctrl + a | append file to harpoon menu |
| normal | Ctrl + j | jump to 1st harpoon file |
| normal | Ctrl + k | jump to 2nd harpoon file |
| normal | Ctrl + l | jump to 3rd harpoon file |
| normal | Ctrl + ; | jump to 4th harpoon file |

### lsp
| mode | keymap | effect |
| --- | --- | --- |
| normal | \<leader\>f | format code in file |
| normal | gd | go to definition |
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

### comment
| mode | keymap | effect |
| --- | --- | --- |
| visual | \<leader\>gc | toggle line comment |
| visual | \<leader\>gb | toggle block comment |

### dap
| mode | keymap | effect |
| --- | --- | --- |
| normal | \<leader\>c | attach debugger + debug continue |
| normal | \<leader\>ss | debug step over |
| normal | \<leader\>si | debug step into |
| normal | \<leader\>so | debug step out |
| normal | \<leader\>b | debug toggle breakpoint |
| normal | \<leader\>B | debug set condition breakpoint |
| normal | \<leader\>dr | toggle repl ui |
| normal | \<leader\>ds | show stacks |
| normal | \<leader\>dw | show watches |
| normal | \<leader\>dv | show breakpoints |
| normal | \<leader\>dS | show scopes |
| normal | \<leader\>dc | show console |

### terminal
| mode | keymap | effect |
| --- | --- | --- |
| normal | \<leader\>tt | open terminal |
| normal | \<leader\>tl | open terminal and run current line |
| visual | \<leader\>tl | open terminal and run current line |
| visual | \<leader\>tv | open terminal and run visual selection |

### peek
| mode | keymap | effect |
| --- | --- | --- |
| normal | \<leader\>mpo | open markdown file preview |
| normal | \<leader\>mpc | close markdown file preview |

### undotree
| mode | keymap | effect |
| --- | --- | --- |
| normal | \<leader\>u | view undo tree |

### oil
| mode | keymap | effect |
| --- | --- | --- |
| normal | \<leader\>- | open parent directory in oil file explorer |

### screenkey
| mode | keymap | effect |
| --- | --- | --- |
| normal | \<leader\>sk | toggle screenkey |

### cellular-automaton
| mode | keymap | effect |
| --- | --- | --- |
| normal | \<leader\>mir | make it rain |

[Inspiration](https://github.com/ThePrimeagen/init.lua).
