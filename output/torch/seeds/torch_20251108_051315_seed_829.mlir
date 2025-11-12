"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch_fuzz_complex"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch_aten_size.int"(%arg0, %c0) : (!torch_vtensor, !torch_int) -> !torch_int
      %1 = "torch_aten_size.int"(%arg1, %c1) : (!torch_vtensor, !torch_int) -> !torch_int
      %2 = "torch_prim_ListConstruct"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_list
      %3 = "torch_vtensor.literal"() <{value = dense<[[[1, 2], [3, 4]]]> : tensor<2x2xi32>}> : () -> !torch_vtensor
      %4 = "torch_aten_add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %5 = "torch_aten_cat"(%2, %c0) : (!torch_list, !torch_int) -> !torch_vtensor
      %6 = "torch_aten_eq.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%6) : (!torch_vtensor) -> ()
    ^bb1:
      "func.return"(%arg0) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()