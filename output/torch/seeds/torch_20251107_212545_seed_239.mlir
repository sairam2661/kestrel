"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral, !torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral, sym_name = "torch_custom_op"}> ({
  ^bb0(%arg0: !torch_vtensorliteral, %arg1: !torch_vtensorliteral, %arg2: !torch_vtensorliteral):
    %0 = "torch.aten.slice.Tensor"(%arg0, %c1, %c2, %c3) : (!torch_vtensorliteral, !torch_constantint, !torch_constantint, !torch_constantint) -> !torch_vtensorliteral
    %1 = "torch.aten.view"(%arg1, %c4, %c5) : (!torch_vtensorliteral, !torch_constantint, !torch_constantint) -> !torch_vtensorliteral
    %2 = "torch.aten.add.Tensor"(%0, %1) : (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral
    %3 = "torch.aten.view"(%2, %c6, %c7, %c8) : (!torch_vtensorliteral, !torch_constantint, !torch_constantint, !torch_constantint) -> !torch_vtensorliteral
    %4 = "torch.aten.slice.Tensor"(%arg2, %c9, %c10, %c11) : (!torch_vtensorliteral, !torch_constantint, !torch_constantint, !torch_constantint) -> !torch_vtensorliteral
    %5 = "torch.aten.add.Tensor"(%3, %4) : (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral
    "func.return"(%5) : (!torch_vtensorliteral) -> ()
  }) : () -> ()
}) : () -> ()

"torch_constantint"()  ( {value       .c1 : i64} )
  :  ()  ->  !torch_constantint

"torch_constantint"()  ( {value  .c2 : i64} )
  :  ()  ->  !torch_constantint

"torch_constantint"()  ( {value  .c3 : i64} )
  :  ()  ->  !torch_constantint

"torch_constantint"()  ( {value  .c4 : i64} )
  :  ()  ->  !torch_constantint

"torch_constantint"()  ( {value  .c5 : i64} )
  :  ()  ->  !torch_constantint

"torch_constantint"()  ( {value  .c6 : i64} )
  :  ()  ->  !torch_constantint

"torch_constantint"()  ( {value  .c7 : i64} )
  :  ()  ->  !torch_constantint

"torch_constantint"()  ( {value  .c8 : i64} )
  :  ()  ->  !torch_constantint

"torch_constantint"()  ( {value  .c9 : i64} )
  :  ()  ->  !torch_constantint

"torch_constantint"()  ( {value  .c10 : i64} )
  :  ()  ->  !torch_constantint

"torch_constantint"()  ( {value  .c11 : i64} )
  :  ()  ->  !torch_constantint