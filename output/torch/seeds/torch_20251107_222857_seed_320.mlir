"builtin.module"() ({
  "func.func"() <{function_type = (!torch_int, !torch_int) -> !torch_int, sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: !torch_int, %arg1: !torch_int):
    %2 = "torch.constant.int"() <{value = 42 : i64}> : () -> !torch_int
    %3 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_int, !torch_int) -> !torch_int
    %4 = "torch.aten.mul.Tensor"(%3, %2) : (!torch_int, !torch_int) -> !torch_int
    %5 = "torch.aten.sub.Tensor"(%4, %arg0) : (!torch_int, !torch_int) -> !torch_int
    %6 = "torch.aten.index_select"(%5, %2, %arg1) : (!torch_int, !torch_int, !torch_int) -> !torch_int
    "func.return"(%6) : (!torch_int) -> ()
  }) : () -> ()
}) : () -> ()