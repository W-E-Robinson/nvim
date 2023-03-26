# Inspired by ThePrimeagen's [video](https://www.youtube.com/watch?v=w7i4amO_zaE) and [repo](https://github.com/ThePrimeagen/init.lua), with some personal modifications.
## leader = " " (space)
### navigation
| mode | keymap | effect |
| --- | --- | --- |
| normal | \<leader\>pv | enters vim explorer (:Ex) |
| normal | \<leader\>pf | search by words in file path |
| normal | \<leader\>pg | search by words in file path (only git tracked files) |
| normal | \<leader\>ps | grep search (top directory is where nvim started) |
| normal | \<leader\>H | Horizontal explorer (:Hex) |
| normal | \<leader\>V | Vertical explorer (:Vex) |
| normal | Ctrl + m | open harpoon menu |
| normal | Ctrl + a | add file to harpoon menu |
| normal | Ctrl + j | jump to 1st harpoon file |
| normal | Ctrl + k | jump to 2nd harpoon file |
| normal | Ctrl + l | jump to 3rd harpoon file |
| normal | Ctrl + ; | jump to 4th harpoon file |
### coding
| mode | keymap | effect |
| --- | --- | --- |
| insert | Ctrl + c | esc |
| normal | \<leader\>sg | begin substitution (:%s) with current word + /g |
| normal | \<leader\>sc | begin substitution (:%s) with current word + /gc |
| view | J | move code down once |
| view | K | move code up once |
| normal | J | bring code from below line up |
| normal | \<leader\>Y | copy to system clipboard |
| visual | \<leader\>pp | copy to system clipboard |
| normal | \<leader\>/ | begin search (/) with current word |
#### lsp
| mode | keymap | effect |
| --- | --- | --- |
| normal | \<leader\>f | format code in file |
| insert | Ctrl + p | autocomplete move up in list |
| insert | Ctrl + n | autocomplete move down in list |
| insert | Ctrl + y | autocomplete select in list |
| insert | gd | go to definition |
| normal | K | detail box |
| normal | \<leader\>vd | view full lint message |
| normal | [d | next lint message |
| normal | ]d | previous lint message |
| normal | \<leader\>vca | view code actions |
| normal | \<leader\>vrr | view references |
| normal | \<leader\>vrn | rename |
| insert | Ctrl + h | view calling function's information |
### undo
| mode | keymap | effect |
| --- | --- | --- |
| normal | \<leader\>u | view undo tree |
