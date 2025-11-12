"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "cross_dialect_example"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %bool_val = "torch.constant.bool"() <{value = true}> : () -> i1
      %tensor_1 = "torch.prim.NumToTensor.Scalar"(%c1_i32) : (i32) -> !torch_vtensor
      %tensor_2 = "torch.prim.NumToTensor.Scalar"(%c2_i32) : (i32) -> !torch_vtensor
      %list = "torch.prim.ListConstruct"(%tensor_1, %tensor_2) : (!torch_vtensor, !torch_vtensor) -> !torch_list
      %viewed_tensor = "torch.aten.view"(%arg0, %list) : (!torch_vtensor, !torch_list) -> !torch_vtensor
      %index_select = "torch.aten.index_select"(%viewed_tensor, %c1_i32, %c2_i32) : (!torch_vtensor, i32, i32) -> !torch_vtensor
      %eq_tensor = "torch.aten.eq.Tensor"(%index_select, %tensor_1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%eq_tensor) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()