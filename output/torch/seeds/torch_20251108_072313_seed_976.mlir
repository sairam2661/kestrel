"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch_complex_op_sequence"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor, %arg2: !torch_vtensor):
    %bool_true = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %bool_false = "torch.constant.bool"() <{value = false}> : () -> !torch_bool
    %none_value = "torch.constant.none"() : () -> !torch_none
    %shape_as_tensor = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor) -> !torch_vtensor
    %list_construct = "torch.prim.ListConstruct"(%shape_as_tensor) : (!torch_vtensor) -> !torch_list
    %add_tensor = "torch.aten.add.Tensor"(%arg0, %arg1, %none_value) : (!torch_vtensor, !torch_vtensor, !torch_none) -> !torch_vtensor
    %eq_tensor = "torch.aten.eq.Tensor"(%add_tensor, %arg2) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %item = "torch.aten.item"(%eq_tensor) : (!torch_vtensor) -> !torch_scalar
    %int_value = "torch.prim.NumToTensor.Scalar"(%item) : (!torch_scalar) -> !torch_vtensor
    "func.return"(%int_value) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()