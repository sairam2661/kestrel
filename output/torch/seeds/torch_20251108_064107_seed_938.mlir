"builtin.module"() ({
  "func.func"() <{function_type = (!torch_tensor, !torch_tensor) -> !torch_tensor, sym_name = "unusual_torch_op_sequence"}> ({
  ^bb0(%arg0: !torch_tensor, %arg1: !torch_tensor):
    %0 = "torch.aten.add"(%arg0, %arg1) : (!torch_tensor, !torch_tensor) -> !torch_tensor
    %1 = "torch.aten.mul"(%0, %arg0) : (!torch_tensor, !torch_tensor) -> !torch_tensor
    %2 = "torch.aten.sub"(%1, %arg1) : (!torch_tensor, !torch_tensor) -> !torch_tensor
    %3 = "torch.aten.div"(%2, %arg0) : (!torch_tensor, !torch_tensor) -> !torch_tensor
    %4 = "torch.aten.relu"(%3) : (!torch_tensor) -> !torch_tensor
    "func.return"(%4) : (!torch_tensor) -> ()
  }) : () -> ()
}) : () -> ()