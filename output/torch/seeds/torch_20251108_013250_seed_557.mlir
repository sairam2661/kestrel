"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_int, !torch_tensor) -> !torch_vtensor, sym_name = "torch.aten.index_select$complex"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_int, %arg2: !torch_tensor):
    %0 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %1 = "torch.constant.none"() : () -> !torch_none
    %2 = "torch.prim.NumToTensor.Scalar"(%arg1) : (!torch_int) -> !torch_tensor
    %3 = "torch.aten.view"(%arg2, %2) : (!torch_tensor, !torch_tensor) -> !torch_tensor
    %4 = "torch.aten.index_select"(%arg0, %arg1, %3) : (!torch_vtensor, !torch_int, !torch_tensor) -> !torch_vtensor
    "func.return"(%4) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()