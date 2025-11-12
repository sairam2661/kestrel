"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "fuzz_test"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.vtensor.literal"() <{value = dense<1.000000e+00> : tensor<4x3xf32>}> : () -> !torch_vtensor
    %1 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %3 = "torch.prim.ListConstruct"(%2) : (!torch_int) -> !torch_list
    %4 = "torch.aten.view"(%arg0, %3) : (!torch_vtensor, !torch_list) -> !torch_vtensor
    %5 = "torch.aten.slice.Tensor"(%4, %2, %2, %2) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    %6 = "torch.aten.eq.Tensor"(%arg1, %5) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %7 = "torch.aten._make_per_tensor_quantized_tensor"(%6, %2, %2, %2) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    "func.return"(%7) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()