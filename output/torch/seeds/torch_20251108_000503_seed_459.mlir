"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_bool) -> !torch_list, sym_name = "unusual_combinations"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_bool):
    %0 = "torch.constant.float"() <{value = 3.14 : f32}> : () -> !torch_float
    %1 = "torch.constant.int"() <{value = 1024 : i32}> : () -> !torch_int
    %2 = "torch.prim.NumToTensor.Scalar"(%0) : (!torch_float) -> !torch_vtensor
    %3 = "torch.prim.NumToTensor.Scalar"(%1) : (!torch_int) -> !torch_vtensor
    %4 = "torch.aten.add.Tensor"(%arg0, %2) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %5 = "torch.aten.eq.Tensor"(%arg0, %2) : (!torch_vtensor, !torch_vtensor) -> !torch_bool
    %6 = "torch.prim.ListConstruct"(%4, %5) : (!torch_vtensor, !torch_bool) -> !torch_list
    "func.return"(%6) : (!torch_list) -> ()
  }) : () -> ()
}) : () -> ()