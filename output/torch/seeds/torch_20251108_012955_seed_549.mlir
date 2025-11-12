"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_cat_and_quant"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %c0_i64 = "arith.constant"() <{value = 0 : i64}> : () -> i64
      %c1_i64 = "arith.constant"() <{value = 1 : i64}> : () -> i64
      %c2_i64 = "arith.constant"() <{value = 2 : i64}> : () -> i64
      %c3_i64 = "arith.constant"() <{value = 3 : i64}> : () -> i64
      %c4_i64 = "arith.constant"() <{value = 4 : i64}> : () -> i64
      
      %size0 = "torch.aten.size.int"(%arg0, %c0_i64) : (!torch_vtensor, i64) -> i64
      %size1 = "torch.aten.size.int"(%arg0, %c1_i64) : (!torch_vtensor, i64) -> i64
      %size2 = "torch.aten.size.int"(%arg1, %c0_i64) : (!torch_vtensor, i64) -> i64
      %size3 = "torch.aten.size.int"(%arg1, %c1_i64) : (!torch_vtensor, i64) -> i64
      
      %eq0 = "torch.aten.eq.Tensor"(%size0, %size2) : (i64, i64) -> i1
      %eq1 = "torch.aten.eq.Tensor"(%size1, %size3) : (i64, i64) -> i1
      
      %and0 = "arith.andi"(%eq0, %eq1) : (i1, i1) -> i1
      
      %list0 = "torch.prim.ListConstruct"(%size0, %size1) : (i64, i64) -> !torch_list
      %list1 = "torch.prim.ListConstruct"(%size2, %size3) : (i64, i64) -> !torch_list
      
      %concat_list = "torch.prim.ListConstruct"(%list0, %list1) : (!torch_list, !torch_list) -> !torch_list
      
      %cat0 = "torch.aten.cat"(%concat_list, %c0_i64) : (!torch_list, i64) -> !torch_vtensor
      
      %quant_tensor = "torch.aten._make_per_tensor_quantized_tensor"(%cat0, %c1_i64, %c1_i64, %c0_i64) : (!torch_vtensor, i64, i64, i64) -> !torch_vtensor
      
      "func.return"(%quant_tensor) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()