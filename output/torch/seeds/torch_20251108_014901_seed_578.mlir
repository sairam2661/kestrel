"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_int) -> !torch_vtensor, sym_name = "complex_operation_fuzzer"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_int):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %1 = "torch.prim.NumToTensor.Scalar"(%0) : (!torch_int) -> !torch_vtensor
    %2 = "torch.aten.size.int"(%arg0) : (!torch_vtensor) -> !torch_int
    %3 = "torch.aten.add.Tensor"(%arg1, %2) : (!torch_int, !torch_int) -> !torch_int
    %4 = "torch.constant.none"() : () -> !torch_none
    %5 = "torch.prim.ListConstruct"(%3, %0, %0) : (!torch_int, !torch_int, !torch_int) -> !torch_list
    %6 = "torch.aten.zeros"(%5, %4, %4, %4, %4) : (!torch_list, !torch_none, !torch_none, !torch_none, !torch_none) -> !torch_vtensor
    %7 = "torch.aten.cat"(%arg0, %6, %0) : (!torch_vtensor, !torch_vtensor, !torch_int) -> !torch_vtensor
    "func.return"(%7) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()