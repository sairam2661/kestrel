"builtin.module"() ({
  "func.func"() <{function_type = (!torch_constant_str, !torch_constant_int, !torch_constant_int) -> !torch_constant_none, sym_name = "fuzzing_example"}> ({
    ^bb0(%arg0: !torch_constant_str, %arg1: !torch_constant_int, %arg2: !torch_constant_int):
      %0 = "torch.aten.size.int"(%arg1) : (!torch_constant_int) -> !torch_constant_int
      %1 = "torch.constant.none"() : () -> !torch_constant_none
      %2 = "torch.aten._shape_as_tensor"(%arg2) : (!torch_constant_int) -> !torch_constant_int
      %3 = "torch.aten.add.Tensor"(%0, %2) : (!torch_constant_int, !torch_constant_int) -> !torch_constant_int
      %4 = "torch.aten.eq.Tensor"(%3, %arg2) : (!torch_constant_int, !torch_constant_int) -> !torch_constant_int
      "func.return"(%1) : (!torch_constant_none) -> ()
  }) : () -> ()
}) : () -> ()