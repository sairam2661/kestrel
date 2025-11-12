"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch_fuzz_test"}> ({
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_int
    %3 = "torch.constant.float"() <{value = 0.1 : f32}> : () -> !torch_float
    %4 = "torch.vtensor.literal"() <{value = dense<1> : tensor<2x3xi32>}> : () -> !torch_vtensor
    %5 = "torch.vtensor.literal"() <{value = dense<2> : tensor<2x3xi32>}> : () -> !torch_vtensor
    %6 = "torch.aten.item"(%4) : (!torch_vtensor) -> !torch_int
    %7 = "torch.aten.index_select"(%5, %0, %6) : (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
    %8 = "torch.aten.view"(%7, %1, %2) : (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
    %9 = "torch.aten.add.Tensor"(%8, %3) : (!torch_vtensor, !torch_float) -> !torch_vtensor
    "func.return"(%9) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()