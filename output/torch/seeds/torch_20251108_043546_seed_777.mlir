"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_list, !torch_int) -> !torch_vtensor, sym_name = "test_complex_op"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_list, %arg2: !torch_int):
      %0 = "torch.constant.int"() <{value = 10 : i64}> : () -> !torch_int
      %1 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %2 = "torch.constant.none"() : () -> !torch_none
      %3 = "torch.aten.slice.Tensor"(%arg0, %0, %0, %0) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
      %4 = "torch.prim.ListConstruct"(%0, %0) : (!torch_int, !torch_int) -> !torch_list
      %5 = "torch.aten._shape_as_tensor"(%3) : (!torch_vtensor) -> !torch_vtensor
      %6 = "torch.aten.size.int"(%3, %0) : (!torch_vtensor, !torch_int) -> !torch_int
      %7 = "torch.prim.NumToTensor.Scalar"(%6) : (!torch_int) -> !torch_vtensor
      %8 = "torch.aten.eq.Tensor"(%7, %5) : (!torch_vtensor, !torch_vtensor) -> !torch_bool
      %9 = "torch.aten.index_select"(%3, %0, %arg2) : (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
      %10 = "torch.aten.add.Tensor"(%arg0, %9) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%10) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()