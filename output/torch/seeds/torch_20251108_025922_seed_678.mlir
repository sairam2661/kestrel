"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_tensor_op"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 10 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %2 = "torch.prim.ListConstruct"(%0) : (!torch_int) -> !torch_list
    %3 = "torch.aten.size.int"(%arg0, %1) : (!torch_vtensor, !torch_int) -> !torch_int
    %4 = "torch.prim.ListConstruct"(%3) : (!torch_int) -> !torch_list
    %5 = "torch.aten.view"(%arg0, %4) : (!torch_vtensor, !torch_list) -> !torch_vtensor
    %6 = "torch.aten.add"(%5, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %7 = "torch.aten.div.Scalar"(%6, %0) : (!torch_vtensor, !torch_int) -> !torch_vtensor
    "func.return"(%7) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()