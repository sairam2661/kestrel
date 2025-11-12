"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "tensor_mutation"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %c0_i64 = "arith.constant"() <{value = 0 : i64}> : () -> i64
      %c1_i64 = "arith.constant"() <{value = 1 : i64}> : () -> i64
      %c2_i64 = "arith.constant"() <{value = 2 : i64}> : () -> i64
      %c3_i64 = "arith.constant"() <{value = 3 : i64}> : () -> i64
      
      %size0 = "torch.aten.size.int"(%arg0, %c0_i64) : (!torch_vtensor, i64) -> !torch_int
      %size1 = "torch.aten.size.int"(%arg0, %c1_i64) : (!torch_vtensor, i64) -> !torch_int
      
      %list0 = "torch.prim.ListConstruct"(%size0, %size1) : (!torch_int, !torch_int) -> !torch_list_int
      %reshaped0 = "torch.aten.view"(%arg0, %list0) : (!torch_vtensor, !torch_list_int) -> !torch_vtensor
      
      %size2 = "torch.aten.size.int"(%arg1, %c0_i64) : (!torch_vtensor, i64) -> !torch_int
      %size3 = "torch.aten.size.int"(%arg1, %c1_i64) : (!torch_vtensor, i64) -> !torch_int
      
      %list1 = "torch.prim.ListConstruct"(%size2, %size3) : (!torch_int, !torch_int) -> !torch_list_int
      %reshaped1 = "torch.aten.view"(%arg1, %list1) : (!torch_vtensor, !torch_list_int) -> !torch_vtensor
      
      %added = "torch.aten.add.Tensor"(%reshaped0, %reshaped1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      
      "func.return"(%added) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()