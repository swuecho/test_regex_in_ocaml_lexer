open Core
open Lexer
open Lexing

let loop filename () =
  let inx = In_channel.create filename in
  let lexbuf = Lexing.from_channel inx in
  lexbuf.lex_curr_p <- { lexbuf.lex_curr_p with pos_fname = filename };
  Lexer.read lexbuf; 
  In_channel.close inx

let () =
  Command.basic ~summary:"Parse and display"
    Command.Spec.(empty +> anon ("filename" %: file))
    loop
  |> Command.run
