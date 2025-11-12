"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_fuzz"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.str"() <{value = "test"}> : () -> !torch_string
    %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %2 = "torch.prim.NumToTensor.Scalar"(%1) : (!torch_int) -> !torch_int_tensor
    %3 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor) -> !torch_int_tensor
    %4 = "torch.aten.slice.Tensor"(%arg0, %1, %2, %3) : (!torch_vtensor, !torch_int, !torch_int_tensor, !torch_int_tensor) -> !torch_vtensor
    %5 = "torch.prim.ListConstruct"(%2, %3) : (!torch_int_tensor, !torch_int_tensor) -> !torch_list_int_tensor
    %6 = "torch.aten.item"(%4) : (!torch_vtensor) -> !torch_int
    %7 = "torch.prim.NumToTensor.Scalar"(%6) : (!torch_int) -> !torch_int_tensor
    %8 = "torch.aten.cat"(%arg1, %7) : (!torch_vtensor, !torch_int_tensor) -> !torch_vtensor
    "func.return"(%8) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()