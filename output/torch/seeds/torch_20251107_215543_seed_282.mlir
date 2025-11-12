"builtin.module"() ({
  "func.func"() <{function_type = (!torch_constant_bool, !torch_constant_int, !torch_vtensor) -> !torch_vtensor, sym_name = "unique_fuzz_case"}> ({
  ^bb0(%arg0: !torch_constant_bool, %arg1: !torch_constant_int, %arg2: !torch_vtensor):
    %0 = "torch.constant.none"() : () -> !torch_constant_none
    %1 = "torch.constant.float"() <{value = 3.14 : f64}> : () -> !torch_constant_float
    %2 = "torch.aten._shape_as_tensor"(%arg2) : (!torch_vtensor) -> !torch_vtensor
    %3 = "torch.prim.ListConstruct"(%2, %2) : (!torch_vtensor, !torch_vtensor) -> !torch_list
    %4 = "torch.aten.cat"(%3, %arg1) : (!torch_list, !torch_constant_int) -> !torch_vtensor
    %5 = "torch.prim.ListConstruct"(%arg1, %arg1) : (!torch_constant_int, !torch_constant_int) -> !torch_list
    %6 = "torch.aten.view"(%4, %5) : (!torch_vtensor, !torch_list) -> !torch_vtensor
    %7 = "torch.aten.slice.Tensor"(%6, %arg1, %arg1, %arg1) : (!torch_vtensor, !torch_constant_int, !torch_constant_int, !torch_constant_int) -> !torch_vtensor
    %8 = "torch.aten._make_per_tensor_quantized_tensor"(%7, %1, %arg1, %arg1, %arg1) : (!torch_vtensor, !torch_constant_float, !torch_constant_int, !torch_constant_int, !torch_constant_int) -> !torch_vtensor
    %9 = "torch.aten.add.Tensor"(%8, %7) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %10 = "torch.aten.item"(%9) : (!torch_vtensor) -> !torch_constant_int
    "func.return"(%10) : (!torch_constant_int) -> ()
  }) : () -> ()
}) : () -> ()