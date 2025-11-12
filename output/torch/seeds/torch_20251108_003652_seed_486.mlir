"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "matrix_multiply_test"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_int
      %2 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch_int
      %3 = "torch.constant.bool"() <{value = false}> : () -> !torch_bool
      %4 = "torch.prim.ListConstruct"(%0, %1) : (!torch_int, !torch_int) -> !torch_list
      %5 = "torch.prim.ListConstruct"(%1, %2) : (!torch_int, !torch_int) -> !torch_list
      %6 = "torch.prim.ListConstruct"(%2, %0) : (!torch_int, !torch_int) -> !torch_list
      %7:2 = "torch.aten.matmul"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> (!torch_vtensor, !torch_vtensor)
      "func.return"(%7#0) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()