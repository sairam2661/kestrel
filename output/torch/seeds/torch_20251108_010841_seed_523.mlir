"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "mixed_ops_func"}> ({
    %cst0 = "torch.constant.float"() <{value = 3.14 : f32}> : () -> !torch_vtensor
    %cst1 = "torch.constant.int"() <{value = 42 : i64}> : () -> !torch_vtensor
    %arg0 = "func.arg"() : () -> !torch_vtensor
    %arg1 = "func.arg"() : () -> !torch_vtensor

    %shape0 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor) -> !torch_vtensor
    %shape1 = "torch.aten._shape_as_tensor"(%arg1) : (!torch_vtensor) -> !torch_vtensor

    %cat_shapes = "torch.aten.cat"(%shape0, %shape1, %cst1) : (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor

    %add_tensors = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor

    %size0 = "torch.aten.size.int"(%arg0) : (!torch_vtensor) -> !torch_vtensor
    %size1 = "torch.aten.size.int"(%arg1) : (!torch_vtensor) -> !torch_vtensor

    %item0 = "torch.aten.item"(%size0) : (!torch_vtensor) -> !torch_vtensor
    %item1 = "torch.aten.item"(%size1) : (!torch_vtensor) -> !torch_vtensor

    "func.return"(%add_tensors) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()