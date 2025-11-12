"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "nested_operands"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %1 = "torch.aten._shape_as_tensor"(%0) : (!torch_vtensor) -> !torch_size
      %2 = "torch.aten.size.int"(%1, %c0_i64) : (!torch_size, i64) -> i64
      %3 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %4 = "torch.prim.ListConstruct"(%2, %3) : (i64, !torch_bool) -> !torch_list
      %5 = "torch.aten.item"(%2) : (i64) -> i64
      %6 = "torch.aten.slice.Tensor"(%arg0, %c0_i64, %c0_i64, %5) : (!torch_vtensor, i64, i64, i64) -> !torch_vtensor
      "func.return"(%6) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()