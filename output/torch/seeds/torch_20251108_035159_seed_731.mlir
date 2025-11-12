"builtin.module"() ({
  "func.func"() <{function_type = (!torch_list, !torch_list) -> !torch_list, sym_name = "cross_dialect_concat"}> ({
    ^bb0(%arg0: !torch_list, %arg1: !torch_list):
      %0 = "torch.aten.cat"(%arg0, %arg1) : (!torch_list, !torch_list) -> !torch_list
      "func.return"(%0) : (!torch_list) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torch_list) -> !torch_list, sym_name = "invert_list$complex"}> ({
    ^bb0(%arg0: !torch_list):
      %0 = "torch.aten.reverse"(%arg0) : (!torch_list) -> !torch_list
      "func.return"(%0) : (!torch_list) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torch_list, !torch_list) -> !torch_list, sym_name = "merge_lists$nested"}> ({
    ^bb0(%arg0: !torch_list, %arg1: !torch_list):
      %0 = "torch.aten.cat"(%arg0, %arg1) : (!torch_list, !torch_list) -> !torch_list
      %1 = "torch.aten.reverse"(%0) : (!torch_list) -> !torch_list
      "func.return"(%1) : (!torch_list) -> ()
  }) : () -> ()
}) : () -> ()