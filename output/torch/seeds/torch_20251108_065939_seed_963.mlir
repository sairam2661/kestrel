"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral_element_type, !torch_vtensorliteral_element_type) -> !torch_vtensorliteral_element_type, sym_name = "fuzz_torch_complex_combinations"}> ({
  ^bb0(%arg0: !torch_vtensorliteral_element_type, %arg1: !torch_vtensorliteral_element_type):
    %0 = "torch.aten.slice.Tensor"(%arg0, %arg1, %arg1) : (!torch_vtensorliteral_element_type, !torch_vtensorliteral_element_type, !torch_vtensorliteral_element_type) -> !torch_vtensorliteral_element_type
    %1 = "torch.aten.view"(%0, %arg1) : (!torch_vtensorliteral_element_type, !torch_vtensorliteral_element_type) -> !torch_vtensorliteral_element_type
    %2 = "torch.aten.item"(%1) : (!torch_vtensorliteral_element_type) -> !torch_vtensorliteral_element_type
    %3 = "torch.constant.bool"() <{value = false}> : () -> !torch_vtensorliteral_element_type
    %4 = "torch.prim.ListConstruct"(%3) : (!torch_vtensorliteral_element_type) -> !torch_prim_listconstruct_result_type
    %5 = "torch.aten.size.int"(%2, %arg0) : (!torch_vtensorliteral_element_type, !torch_vtensorliteral_element_type) -> !torch_aten_sizeint_result_type
    %6 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensorliteral_element_type, !torch_vtensorliteral_element_type) -> !torch_vtensorliteral_element_type
    %7 = "torch.aten._shape_as_tensor"(%5) : (!torch_aten_sizeint_result_type) -> !torch_aten_shapeastensor_result_type
    %8 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensorliteral_element_type, !torch_vtensorliteral_element_type) -> !torch_vtensorliteral_element_type
    %9 = "torch.prim.NumToTensor.Scalar"(%arg0) : (!torch_vtensorliteral_element_type) -> !torch_vtensorliteral_element_type
    "func.return"(%9) : (!torch_vtensorliteral_element_type) -> ()
  }) : () -> ()
}) : () -> ()