"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> (!torch_vtensor, !torch_vtensor), sym_name = "fuzz_torch_operations"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.float"() <{value = 1.500000e+00 : f64}> : () -> !torch_float
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %2 = "torch.prim.ListConstruct"(%0, %1) : (!torch_float, !torch_int) -> !torch_list
    %3 = "torch.aten.view"(%arg0, %2) : (!torch_vtensor, !torch_list) -> !torch_vtensor
    %4 = "torch.aten.slice.Tensor"(%3, %1, %1, %1) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    %5 = "torch.aten.index_select"(%4, %1, %arg1) : (!torch_vtensor, !torch_int, !torch_vtensor) -> !torch_vtensor
    %6 = "torch.aten.add.Tensor"(%5, %3) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %7 = "torch.aten.size.int"(%6, %1) : (!torch_vtensor, !torch_int) -> !torch_int
    %8 = "torch.prim.NumToTensor.Scalar"(%7) : (!torch_int) -> !torch_vtensor
    "func.return"(%6, %8) : (!torch_vtensor, !torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()