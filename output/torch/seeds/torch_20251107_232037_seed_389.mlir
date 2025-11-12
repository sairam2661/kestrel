"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "tensor_complexity_test"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor, %arg2: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %1 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %2 = "torch.aten.add"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %3 = "torch.aten.mul"(%2, %arg2) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %4 = "torch.aten.sum"(%3) : (!torch_vtensor) -> !torch_int
    %5 = "torch.aten.cast"(%4, "f32") : (!torch_int) -> !torch_float
    %6 = "torch.aten.div"(%3, %5) : (!torch_vtensor, !torch_float) -> !torch_vtensor
    "func.return"(%6) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()