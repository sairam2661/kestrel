"builtin.module"() ({
  "func.func"() <{function_type = (!torch_CONSTANT_INT, !torch_CONSTANT_INT, !torch_CONSTANT_INT) -> !torch_CONSTANT_INT, sym_name = "complex_index_select"}> ({
    ^bb0(%arg0: !torch_CONSTANT_INT, %arg1: !torch_CONSTANT_INT, %arg2: !torch_CONSTANT_INT):
      %0 = "torch.constant.none"() : () -> !torch_NONE
      %1 = "torch.constant.bool"() <{value = true}> : () -> !torch_BOOL
      %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_INT
      %3 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_INT
      %4 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_INT
      %5 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_INT
      %6 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_INT
      %7 = "torch.prim.ListConstruct"(%2, %3, %4, %5, %6) : (!torch_INT, !torch_INT, !torch_INT, !torch_INT, !torch_INT) -> !torch_list_INT
      %8 = "torch.aten.index_select"(%arg0, %arg1, %7) : (!torch_CONSTANT_INT, !torch_CONSTANT_INT, !torch_list_INT) -> !torch_CONSTANT_INT
      "func.return"(%8) : (!torch_CONSTANT_INT) -> ()
  }) : () -> ()
}) : () -> ()