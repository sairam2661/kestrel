"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_bool) -> !torch_bool, sym_name = "torch.aten.eq.Tensor_complex"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %1 = "torch.constant.bool"() <{value = false}> : () -> !torch_bool
      %2 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %3 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_bool
      %4 = "torch.aten.item"(%3) : (!torch_bool) -> i1
      %5 = "arith.cmpi"("eq", %4, %0) : (i1, i64) -> i1
      %6 = "arith.select"(%5, %2, %1) : (i1, !torch_bool, !torch_bool) -> !torch_bool
      "func.return"(%6) : (!torch_bool) -> ()
  }) : () -> ()
}) : () -> ()