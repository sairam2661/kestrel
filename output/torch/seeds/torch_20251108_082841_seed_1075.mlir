"builtin.module"() ({
  "func.func"() <{function_type = (!torch_tensor, !torch_tensor) -> !torch_tensor, sym_name = "complex_tensor_op_chain"}> ({
    ^bb0(%arg0: !torch_tensor, %arg1: !torch_tensor):
      %0 = "torch.aten.add"(%arg0, %arg1) : (!torch_tensor, !torch_tensor) -> !torch_tensor
      %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %2 = "torch.aten.mul"(%0, %1) : (!torch_tensor, !torch_int) -> !torch_tensor
      %3 = "torch.aten.sub"(%2, %arg1) : (!torch_tensor, !torch_tensor) -> !torch_tensor
      %4 = "torch.aten.div"(%3, %arg0) : (!torch_tensor, !torch_tensor) -> !torch_tensor
      "func.return"(%4) : (!torch_tensor) -> ()
  }) : () -> ()
}) : () -> ()