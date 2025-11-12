"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "transpose_and_concat"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %2 = "torch.aten.transpose.int"(%arg0, %0, %1) : (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
    %3 = "torch.aten.transpose.int"(%arg1, %0, %1) : (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
    %4 = "torch.prim.ListConstruct"(%2, %3) : (!torch_vtensor, !torch_vtensor) -> !torch_list
    %5 = "torch.aten.cat"(%4, %0) : (!torch_list, !torch_int) -> !torch_vtensor
    %6 = "torch.constant.str"() <{value = "hello"}> : () -> !torch_str
    %7 = "torch.constant.none"() : () -> !torch_none
    "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()