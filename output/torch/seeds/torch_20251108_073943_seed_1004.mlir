"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_int) -> !torch_vtensor, sym_name = "torch_example_func"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_int):
    %0 = "torch.constant.str"() <{value = "random_string"}> : () -> !torch_str
    %1 = "torch.constant.float"() <{value = 3.14 : f32}> : () -> !torch_float
    %2 = "torch.aten.add.Tensor"(%arg0, %arg0, %arg1) : (!torch_vtensor, !torch_vtensor, !torch_int) -> !torch_vtensor
    %3 = "torch.aten.slice.Tensor"(%2, %arg1, %arg1, %arg1) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    %4 = "torch.constant.none"() : () -> !torch_none
    %5 = "torch.prim.ListConstruct"(%arg1, %arg1, %arg1) : (!torch_int, !torch_int, !torch_int) -> !torch_list
    %6 = "torch.aten._shape_as_tensor"(%3) : (!torch_vtensor) -> !torch_vtensor
    %7 = "torch.aten.cat"(%5) : (!torch_list) -> !torch_vtensor
    %8 = "torch.aten._make_per_tensor_quantized_tensor"(%3, %1, %arg1, %arg1) : (!torch_vtensor, !torch_float, !torch_int, !torch_int) -> !torch_vtensor
    %9 = "torch.aten.item"(%8) : (!torch_vtensor) -> !torch_float
    "func.return"(%9) : (!torch_float) -> ()
  }) : () -> ()
}) : () -> ()