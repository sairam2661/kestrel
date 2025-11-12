"builtin.module"() ({
  "func.func"() <{function_type = (!torch_list, !torch_list) -> !torch_list, sym_name = "merge_lists"}> ({
    ^bb0(%arg0: !torch_list, %arg1: !torch_list):
      %0 = "torch.prim.ListConstruct"(%arg0, %arg1) : (!torch_list, !torch_list) -> !torch_list
      "func.return"(%0) : (!torch_list) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (!torch_list) -> !torch_int, sym_name = "list_length"}> ({
    ^bb0(%arg0: !torch_list):
      %0 = "torch.aten.len"(%arg0) : (!torch_list) -> !torch_int
      "func.return"(%0) : (!torch_int) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (!torch_bool, !torch_int) -> !torch_int, sym_name = "conditional_index"}> ({
    ^bb0(%arg0: !torch_bool, %arg1: !torch_int):
      %c0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %c1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %1 = "torch.prim.If"(%arg0) ({
        ^bb1(%arg0: !torch_bool):
          "torch.prim.Yield"(%c1) : (!torch_int) -> ()
      }, {
        ^bb2(%arg0: !torch_bool):
          "torch.prim.Yield"(%c0) : (!torch_int) -> ()
      }) : !torch_int
      "func.return"(%1) : (!torch_int) -> ()
  }) : () -> ()
}) : () -> ()