"builtin.module"() ({
  "func.func"() <{function_type = (!torch_int64, !torch_int64) -> !torch_int64, sym_name = "torch.add_and_multiply"}> ({
    ^bb0(%arg0: !torch_int64, %arg1: !torch_int64):
      %0 = "torch.aten.add"(%arg0, %arg1) : (!torch_int64, !torch_int64) -> !torch_int64
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int64
      %2 = "torch.aten.mul"(%0, %1) : (!torch_int64, !torch_int64) -> !torch_int64
      "func.return"(%2) : (!torch_int64) -> ()
  }) : () -> ()
}) : () -> ()