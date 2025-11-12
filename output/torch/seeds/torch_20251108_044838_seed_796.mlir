"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_32, !torch_vtensor_32) -> !torch_vtensor_32, sym_name = "fuzzed_func"}> ({
  ^bb0(%arg0: !torch_vtensor_32, %arg1: !torch_vtensor_32):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %1 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %2 = "torch.constant.none"() : () -> !torch_none
    %3 = "torch.aten.unsqueeze"(%arg0, %0) : (!torch_vtensor_32, !torch_int) -> !torch_vtensor_33
    %4 = "torch.aten.unsqueeze"(%arg1, %0) : (!torch_vtensor_32, !torch_int) -> !torch_vtensor_33
    %5 = "torch.aten.add.Tensor"(%3, %4) : (!torch_vtensor_33, !torch_vtensor_33) -> !torch_vtensor_33
    %6 = "torch.aten.squeeze"(%5, %0) : (!torch_vtensor_33, !torch_int) -> !torch_vtensor_32
    "func.return"(%6) : (!torch_vtensor_32) -> ()
  }) : () -> ()
}) : () -> ()