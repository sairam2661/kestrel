"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch_complex_fuzz"}> ({
    %0 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %1 = "torch.constant.int"() <{value = 10 : i32}> : () -> !torch_int
    %2 = "torch.constant.float"() <{value = 3.14 : f32}> : () -> !torch_float
    %3 = "torch.vtensor.literal"() <{value = dense<[[[1, 2, 3], [4, 5, 6]]]> : tensor<2x3xi32>}> : () -> !torch_vtensor
    %4 = "torch.vtensor.literal"() <{value = dense<[[[7, 8, 9], [10, 11, 12]]]> : tensor<2x3xi32>}> : () -> !torch_vtensor
    %5 = "torch.aten.slice.Tensor"(%3, %1, %1, %1) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    %6 = "torch.aten.cat"(%5, %4) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %7 = "torch.aten.size.int"(%3, %1) : (!torch_vtensor, !torch_int) -> !torch_int
    %8 = "func.return"(%6) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()