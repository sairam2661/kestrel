"builtin.module"() ({
  "func.func"() <{function_type = (!torchDevice, !torch_device_type, !torch_list, !torch_i64) -> !torch_vtensor, sym_name = "torch.aten.add.Tensor_mode$promote"}> ({
  ^bb0(%arg0: !torchDevice, %arg1: !torch_device_type, %arg2: !torch_list, %arg3: !torch_i64):
    %0 = "torch.constant.str"() <{value = "promote"}> : () -> !torch_str
    %1 = "torch.aten.add.Tensor_mode"(%arg2, %arg3, %0) : (!torch_list, !torch_i64, !torch_str) -> !torch_vtensor
    "func.return"(%1) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()