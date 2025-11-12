"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_tensor2d, !torch_vtensor_tensor1d) -> !torch_vtensor_tensor2d, sym_name = "torch.aten.matmul.float"}> ({
    ^bb0(%arg0: !torch_vtensor_tensor2d, %arg1: !torch_vtensor_tensor1d):
      %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %2 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %3 = "torch.constant.str"() <{value = "hello"}> : () -> !torch_str
      %4 = "torch.aten.matmul.float"(%arg0, %arg1) : (!torch_vtensor_tensor2d, !torch_vtensor_tensor1d) -> !torch_vtensor_tensor2d
      %5 = "torch.aten.add.Tensor"(%4, %4) : (!torch_vtensor_tensor2d, !torch_vtensor_tensor2d) -> !torch_vtensor_tensor2d
      %6 = "torch.aten._shape_as_tensor"(%5) : (!torch_vtensor_tensor2d) -> !torch_vtensor_tensor1d
      %7 = "torch.aten.index_select"(%5, %0, %6) : (!torch_vtensor_tensor2d, !torch_int, !torch_vtensor_tensor1d) -> !torch_vtensor_tensor2d
      "func.return"(%7) : (!torch_vtensor_tensor2d) -> ()
  }) : () -> ()
}) : () -> ()