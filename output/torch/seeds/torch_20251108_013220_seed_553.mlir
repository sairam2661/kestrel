"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_list, !torch_int, !torch_int) -> !torch_float, sym_name = "fuzz_uncommon_ops"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_list, %arg2: !torch_int, %arg3: !torch_int):
      %0 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %1 = "torch.constant.none"() : () -> !torch_none
      %2 = "torch.constant.str"() <{value = "test"}> : () -> !torch_str
      %3 = "torch.aten.index_select"(%arg0, %arg2, %arg3) : (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
      %4 = "torch.aten.view"(%3) <{newSizes = [2, 3, 4]}> : (!torch_vtensor) -> !torch_vtensor
      %5 = "torch.prim.NumToTensor.Scalar"(%arg2) : (!torch_int) -> !torch_tensor
      %6 = "torch.aten.add.Tensor"(%arg0, %4) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %7 = "torch.aten.item"(%6) : (!torch_vtensor) -> !torch_float
      "func.return"(%7) : (!torch_float) -> ()
  }) : () -> ()
}) : () -> ()