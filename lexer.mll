{ 
open Lexing    
}

let regex = ['0'-'9']+

rule read = parse
| regex { Lexing.lexeme lexbuf |> print_endline; read lexbuf }
| _  {  read lexbuf }
| eof { () }
