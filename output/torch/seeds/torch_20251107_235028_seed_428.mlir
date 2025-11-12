"builtin.module"() ({
  "func.func"() <{function_type = (!torch_int, !torch_int, !torch_float, !torch_float) -> !torch_float, sym_name = "unusual_addition_order"}> ({
  ^bb0(%arg0: !torch_int, %arg1: !torch_int, %arg2: !torch_float, %arg3: !torch_float):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %1 = "torch.constant.float"() <{value = 3.000000e+00 : f64}> : () -> !torch_float
    %2 = "torch.aten.add.Tensor"(%arg0, %arg1, %0) : (!torch_int, !torch_int, !torch_int) -> !torch_int
    %3 = "torch.aten.add.Tensor"(%arg2, %arg3, %1) : (!torch_float, !torch_float, !torch_float) -> !torch_float
    %4 = "torch.aten.add.Tensor"(%2, %3, %1) : (!torch_int, !torch_float, !torch_float) -> !torch_float
    "func.return"(%4) : (!torch_float) -> ()
  }) : () -> ()
}) : () -> ()