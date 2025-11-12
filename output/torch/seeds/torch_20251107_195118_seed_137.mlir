"builtin.module"() ({
  "func.func"() <{function_type = (!torch_int, !torch_int, !torch_int) -> !torch_int, sym_name = "mixed_dialects_op"}> ({
  ^bb0(%arg0: !torch_int, %arg1: !torch_int, %arg2: !torch_int):
    %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_int, !torch_int) -> !torch_int
    %1 = "arith.addi"(%arg2, %0) : (!torch_int, !torch_int) -> !torch_int
    "func.return"(%1) : (!torch_int) -> ()
  }) : () -> ()
}) : () -> ()