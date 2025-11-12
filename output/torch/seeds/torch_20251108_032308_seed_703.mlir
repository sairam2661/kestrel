"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "tensor_size_and_cat"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.aten.size.int"(%arg0, %c0_i64) : (!torch_vtensor, !torch_int) -> !torch_int
    %1 = "torch.aten.size.int"(%arg0, %c1_i64) : (!torch_vtensor, !torch_int) -> !torch_int
    %2 = "torch.aten.size.int"(%arg1, %c0_i64) : (!torch_vtensor, !torch_int) -> !torch_int
    %3 = "torch.aten.size.int"(%arg1, %c1_i64) : (!torch_vtensor, !torch_int) -> !torch_int
    %4 = "torch.prim.ListConstruct"(%0, %1) : (!torch_int, !torch_int) -> !torch_list
    %5 = "torch.prim.ListConstruct"(%2, %3) : (!torch_int, !torch_int) -> !torch_list
    %6 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %7 = "torch.aten.cat"(%arg0, %arg1, %6) : (!torch_vtensor, !torch_vtensor, !torch_int) -> !torch_vtensor
    "func.return"(%7) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()