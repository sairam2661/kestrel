"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch_concat_and_slice"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %4 = "torch.constant.none"() : () -> !torch_none
      %5 = "torch.constant.bool"() <{value = false}> : () -> !torch_bool
      %6 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %7 = "torch.prim.ListConstruct"(%0, %1) : (!torch_int, !torch_int) -> !torch_list
      %8 = "torch.aten.cat"(%arg0, %arg1, %4, %5, %6) : (!torch_vtensor, !torch_vtensor, !torch_none, !torch_bool, !torch_bool) -> !torch_vtensor
      %9 = "torch.aten.slice.Tensor"(%8, %0, %0, %2, %1) : (!torch_vtensor, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
      "func.return"(%9) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()