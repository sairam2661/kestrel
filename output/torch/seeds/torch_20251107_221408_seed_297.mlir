"builtin.module"() ({
  "func.func"() <{function_type = (!torch_int, !torch_bool, !torch_vtensor, !torch_list, !torch_int, !torch_int) -> !torch_int, sym_name = "complex_fuzz"}> ({
  ^bb0(%arg0: !torch_int, %arg1: !torch_bool, %arg2: !torch_vtensor, %arg3: !torch_list, %arg4: !torch_int, %arg5: !torch_int):
    %0 = "torch.constant.int"() <{value = 42 : i64}> : () -> !torch_int
    %1 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %2 = "torch.vtensor.literal"() <{elements = dense<1.0   : f32> : tensor<2x2xf32>}> : () -> !torch_vtensor
    %3 = "torch.prim.ListConstruct"(%0, %1, %0) : (!torch_int, !torch_bool, !torch_int) -> !torch_list
    %4 = "torch.aten.item"(%arg0) : (!torch_int) -> !torch_int
    %5 = "torch.constant.str"() <{value = "test"}> : () -> !torch_str
    %6 = "torch.constant.none"() : () -> !torch_none
    %7 = "torch.aten.slice.Tensor"(%arg2, %0, %0, %0, %0) : (!torch_vtensor, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    %8 = "torch.aten.view"(%arg2, %5) : (!torch_vtensor, !torch_str) -> !torch_vtensor
    %9 = "torch.aten.size.int"(%arg2, %0) : (!torch_vtensor, !torch_int) -> !torch_int
    %10 = "torch.aten._shape_as_tensor"(%arg2) : (!torch_vtensor) -> !torch_vtensor
    %11 = "torch.aten._make_per_tensor_quantized_tensor"(%arg2, %4, %0, %6) : (!torch_vtensor, !torch_int, !torch_int, !torch_none) -> !torch_vtensor
    %12 = "torch.prim.NumToTensor.Scalar"(%arg4) : (!torch_int) -> !torch_vtensor
    %13 = "torch.aten.eq.Tensor"(%arg4, %arg5) : (!torch_int, !torch_int) -> !torch_bool
    "func.return"(%13) : (!torch_bool) -> ()
  }) : () -> ()
}) : () -> ()