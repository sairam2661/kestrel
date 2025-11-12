"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complexTypeMath"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %2 = "torch.constant.float"() <{value = 1.5 : f64}> : () -> !torch_float
    %3 = "torch.constant.none"() : () -> !torch_none
    %4 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor) -> !torch_vtensor
    %5 = "torch.aten.size.int"(%arg0, %0) : (!torch_vtensor, !torch_int) -> !torch_int
    %6 = "torch.aten.size.int"(%arg0, %1) : (!torch_vtensor, !torch_int) -> !torch_int
    %7 = "torch.prim.ListConstruct"(%5, %6) : (!torch_int, !torch_int) -> !torch_list
    %8 = "torch.aten.reshape"(%arg0, %7) : (!torch_vtensor, !torch_list) -> !torch_vtensor
    %9 = "torch.aten.add.Tensor"(%arg1, %8) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %10 = "torch.aten.mul.Tensor"(%arg0, %9) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %11 = "torch.aten._make_per_tensor_quantized_tensor"(%10, %2, %0, %3) : (!torch_vtensor, !torch_float, !torch_int, !torch_none) -> !torch_vtensor
    "func.return"(%11) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()