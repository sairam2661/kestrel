"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal) -> !torch_vtensor_literal, sym_name = "complex_tensor_operations"}> ({
  ^bb0(%arg0: !torch_vtensor_literal):
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %3 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %4 = "torch.constant.none"() : () -> !torch_none
    %5 = "torch.prim.ListConstruct"(%1, %2) : (!torch_int, !torch_int) -> !torch_list_int
    %6 = "torch.prim.NumToTensor.Scalar"(%1) : (!torch_int) -> !torch_tensor
    %7 = "torch.prim.NumToTensor.Scalar"(%2) : (!torch_int) -> !torch_tensor
    %8 = "torch.aten.eq.Tensor"(%6, %7) : (!torch_tensor, !torch_tensor) -> !torch_bool
    %9 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor_literal) -> !torch_tensor
    %10 = "torch.aten.size.int"(%9, %1) : (!torch_tensor, !torch_int) -> !torch_int
    %11 = "torch.prim.ListConstruct"(%10, %2) : (!torch_int, !torch_int) -> !torch_list_int
    %12 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %3, %5, %11, %4) : (!torch_vtensor_literal, !torch_bool, !torch_tensor, !torch_list_int, !torch_none) -> !torch_vtensor_literal
    "func.return"(%12) : (!torch_vtensor_literal) -> ()
  }) : () -> ()
}) : () -> ()