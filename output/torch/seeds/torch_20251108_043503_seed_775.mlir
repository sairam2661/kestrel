"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_list, !torch_list) -> !torch_vtensor, sym_name = "fuzz_func"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_list, %arg2: !torch_list):
    %0 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %1 = "torch.constant.none"() : () -> !torch_none
    %2 = "torch.aten.slice.Tensor"(%arg0, %arg1, %arg2, %0, %0) : (!torch_vtensor, !torch_list, !torch_list, !torch_bool, !torch_bool) -> !torch_vtensor
    %3 = "torch.constant.float"() <{value = 1.000000e+00 : f64}> : () -> !torch_float
    %4 = "torch.aten.add.Tensor"(%2, %3) : (!torch_vtensor, !torch_float) -> !torch_vtensor
    "func.return"(%4) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()