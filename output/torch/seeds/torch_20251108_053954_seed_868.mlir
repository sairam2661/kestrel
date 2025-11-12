"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor) -> i1, sym_name = "complex_logic_function"}> ({
  ^bb0(%arg0: !torch_vtensor):
    %1 = "torch.constant.int"() <{value = 42 : i64}> : () -> !torch_int
    %2 = "torch.prim.NumToTensor.Scalar"(%1) : (!torch_int) -> !torch_vtensor
    %3 = "torch.aten.add.Tensor"(%arg0, %2) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %4 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %5 = "torch.prim.NumToTensor.Scalar"(%4) : (!torch_int) -> !torch_vtensor
    %6 = "torch.aten.add.Tensor"(%3, %5) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %7 = "torch.aten.eq.Tensor"(%6, %1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %8 = "torch.vtensor.type_assert"(%7) <{old_type = !torch_vtensor, new_type = tensor<i1>}> : (!torch_vtensor) -> tensor<i1>
    "func.return"(%8) : (tensor<i1>) -> ()
  }) : () -> ()
}) : () -> ()