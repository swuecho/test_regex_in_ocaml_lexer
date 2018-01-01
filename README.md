Ocaml Lexer 

change the *regex pattern* and run *make*. _test.exe_ will output the matchs in _data.txt_


```{ocaml}
{ 
open Lexing    
}

let regex = ['0'-'9']+ (* <---  change the regex here)

rule read = parse
| regex { Lexing.lexeme lexbuf |> print_endline; read lexbuf }
| _  {  read lexbuf }
| eof { () }
```
