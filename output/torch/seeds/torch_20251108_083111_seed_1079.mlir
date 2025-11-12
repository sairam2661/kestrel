"builtin.module"() ({
  "func.func"() <{function_type = (!torch_constant_float, !torch_constant_float, !torch_constant_float) -> !torch_constant_float, sym_name = "custom_op_sequence"}> ({
    ^bb0(%arg0: !torch_constant_float, %arg1: !torch_constant_float, %arg2: !torch_constant_float):
      %0 = "torch.aten.add"(%arg0, %arg1) : (!torch_constant_float, !torch_constant_float) -> !torch_constant_float
      %1 = "torch.aten.mul"(%0, %arg2) : (!torch_constant_float, !torch_constant_float) -> !torch_constant_float
      %2 = "torch.aten.sub"(%1, %arg0) : (!torch_constant_float, !torch_constant_float) -> !torch_constant_float
      %3 = "torch.aten.div"(%2, %arg1) : (!torch_constant_float, !torch_constant_float) -> !torch_constant_float
      %4 = "torch.aten.sqrt"(%3) : (!torch_constant_float) -> !torch_constant_float
      "func.return"(%4) : (!torch_constant_float) -> ()
  }) : () -> ()
}) : () -> ()