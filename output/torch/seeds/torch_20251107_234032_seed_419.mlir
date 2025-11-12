"builtin.module"() ({
  "func.func"() <{function_type = (!torch_LIST_TYPE_1, !torch_LIST_TYPE_2) -> !torch_LIST_TYPE_3, sym_name = "torch.aten.add$mixed"}> ({
  ^bb0(%arg0: !torch_LIST_TYPE_1, %arg1: !torch_LIST_TYPE_2):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_INT_TYPE
    %1 = "torch.aten.add"(%arg0, %arg1, %0) : (!torch_LIST_TYPE_1, !torch_LIST_TYPE_2, !torch_INT_TYPE) -> !torch_LIST_TYPE_3
    "func.return"(%1) : (!torch_LIST_TYPE_3) -> ()
  }) : () -> ()
}) : () -> ()