"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_int) -> !torch_vtensor, sym_name = "fuzz_torch"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_int):
    %size = "torch.aten.size.int"(%arg0, %arg1) : (!torch_vtensor, !torch_int) -> !torch_int
    %shape_tensor = "torch.aten._shape_as_tensor"(%size) : (!torch_int) -> !torch_vtensor
    %list = "torch.prim.ListConstruct"(%shape_tensor) : (!torch_vtensor) -> !torch_list
    %quantized_tensor = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %list, %arg1, %arg1) : (!torch_vtensor, !torch_list, !torch_int, !torch_int) -> !torch_vtensor
    %eq_check = "torch.aten.eq.Tensor"(%arg0, %quantized_tensor) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %result = "torch.aten.add.Tensor"(%arg0, %eq_check) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%result) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()