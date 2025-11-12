"builtin.module"() ({
  "func.func"() <{function_type = (!torch_INT, !torch_INT, !torch_INT) -> !torch_INT, sym_name = "unusual_addition_sequence"}> ({
  ^bb0(%arg0: !torch_INT, %arg1: !torch_INT, %arg2: !torch_INT):
    %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_INT, !torch_INT) -> !torch_INT
    %1 = "torch.aten.add.Tensor"(%0, %arg2) : (!torch_INT, !torch_INT) -> !torch_INT
    %2 = "torch.aten.add.Tensor"(%1, %arg0) : (!torch_INT, !torch_INT) -> !torch_INT
    %3 = "torch.aten.add.Tensor"(%2, %arg2) : (!torch_INT, !torch_INT) -> !torch_INT
    %4 = "torch.aten.add.Tensor"(%3, %arg1) : (!torch_INT, !torch_INT) -> !torch_INT
    "func.return"(%4) : (!torch_INT) -> ()
  }) : () -> ()
}) : () -> ()