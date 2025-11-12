"builtin.module"() ({
  "func.func"() <{function_type = (!torchtorch_type, !torchtorch_type) -> !torchtorch_type, sym_name = "complex_tensor_ops"}> ({
  ^bb0(%arg0: !torchtorch_type, %arg1: !torchtorch_type):
    %0 = "torch.aten.add"(%arg0, %arg1) : (!torchtorch_type, !torchtorch_type) -> !torchtorch_type
    %1 = "torch.aten.sub"(%arg0, %arg1) : (!torchtorch_type, !torchtorch_type) -> !torchtorch_type
    %2 = "torch.aten.mul"(%arg0, %arg1) : (!torchtorch_type, !torchtorch_type) -> !torchtorch_type
    %3 = "torch.aten.div.Tensor"(%arg0, %arg1) : (!torchtorch_type, !torchtorch_type) -> !torchtorch_type
    %4 = "torch.aten.sin"(%arg0) : (!torchtorch_type) -> !torchtorch_type
    %5 = "torch.aten.cos"(%arg0) : (!torchtorch_type) -> !torchtorch_type
    %6 = "torch.aten.relu"(%arg0) : (!torchtorch_type) -> !torchtorch_type
    %7 = "torch.aten.max"(%arg0, %arg1) : (!torchtorch_type, !torchtorch_type) -> !torchtorch_type
    %8 = "torch.aten.min"(%arg0, %arg1) : (!torchtorch_type, !torchtorch_type) -> !torchtorch_type
    %9 = "torch.aten.pow"(%arg0, %arg1) : (!torchtorch_type, !torchtorch_type) -> !torchtorch_type
    "func.return"(%9) : (!torchtorch_type) -> ()
  }) : () -> ()
}) : () -> ()