"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch.aten.add$complex"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %1 = "torch.constant.none"() : () -> !torch_none
    %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %3 = "torch.aten.size.int"(%arg0, %2) : (!torch_vtensor, !torch_int) -> i64
    %4 = "torch.prim.NumToTensor.Scalar"(%3) : (i64) -> !torch_vtensor
    %5 = "torch.aten.add"(%arg0, %arg1, %0) : (!torch_vtensor, !torch_vtensor, !torch_bool) -> !torch_vtensor
    "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()