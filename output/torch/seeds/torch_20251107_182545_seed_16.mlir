"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "tensor_operations"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %2 = "torch.constant.none"() : () -> !torch_none
      %3 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %4 = "torch.prim.ListConstruct"(%0, %1) : (!torch_int, !torch_int) -> !torch_list
      %5 = "torch.aten.view"(%arg0, %4) : (!torch_vtensor, !torch_list) -> !torch_vtensor
      %6 = "torch.aten.add.Tensor"(%arg1, %5) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %7 = "torch.aten.size.int"(%arg0, %1) : (!torch_vtensor, !torch_int) -> !torch_int
      %8 = "torch.prim.ListConstruct"(%7) : (!torch_int) -> !torch_list
      %9 = "torch.aten.view"(%6, %8) : (!torch_vtensor, !torch_list) -> !torch_vtensor
      "func.return"(%9) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()