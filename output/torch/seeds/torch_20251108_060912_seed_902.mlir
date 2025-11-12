"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch.aten.cat_unusual"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %1 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor) -> !torch_vtensor
      %2 = "torch.aten.size.int"(%1, %0) : (!torch_vtensor, !torch_int) -> !torch_int
      %3 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %4 = "torch.aten.eq.Tensor"(%2, %3) : (!torch_int, !torch_int) -> !torch_bool
      %5 = "scf.if"(%4) <{sym_name = "if_then_else"}> ({
        ^bb0:
          %6 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
          scf.yield %6 : !torch_vtensor
      }) : (!torch_bool) -> (!torch_vtensor)
      %7 = "torch.aten.cat"(%5) : (!torch_vtensor) -> !torch_vtensor
      "func.return"(%7) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()