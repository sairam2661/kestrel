"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "unusual_combination"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor, %arg2: !torch_vtensor, %arg3: !torch_vtensor):
    %c0 = "torch.constant.bool"() <{value = false}> : () -> !torch_bool
    %c1 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %size0 = "torch.aten.size.int"(%arg0) : (!torch_vtensor) -> !torch_int
    %size1 = "torch.aten.size.int"(%arg1) : (!torch_vtensor) -> !torch_int
    %size2 = "torch.aten.size.int"(%arg2) : (!torch_vtensor) -> !torch_int
    %size3 = "torch.aten.size.int"(%arg3) : (!torch_vtensor) -> !torch_int
    %eq0 = "torch.aten.eq.Tensor"(%size0, %size1) : (!torch_int, !torch_int) -> !torch_bool
    %eq1 = "torch.aten.eq.Tensor"(%size2, %size3) : (!torch_int, !torch_int) -> !torch_bool
    %and0 = "torch.aten.and.Tensor"(%eq0, %eq1) : (!torch_bool, !torch_bool) -> !torch_bool
    %list0 = "torch.prim.ListConstruct"(%size0, %size1, %size2, %size3) : (!torch_int, !torch_int, !torch_int, !torch_int) -> !torch_list
    %shape0 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor) -> !torch_vtensor
    %shape1 = "torch.aten._shape_as_tensor"(%arg1) : (!torch_vtensor) -> !torch_vtensor
    %cat0 = "torch.aten.cat"(%shape0, %shape1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %add0 = "torch.aten.add.Tensor"(%shape0, %shape1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %quant0 = "torch.aten._make_per_tensor_quantized_tensor"(%add0, %c1, %c0, %c0) : (!torch_vtensor, !torch_bool, !torch_bool, !torch_bool) -> !torch_vtensor
    "func.return"(%quant0) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()