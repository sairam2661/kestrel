"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_lit, !torch_int, !torch_int) -> !torch_vtensor_lit, sym_name = "torch_unusual_combo"}> ({
    ^bb0(%arg0: !torch_vtensor_lit, %arg1: !torch_int, %arg2: !torch_int):
      %const_true = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %const_false = "torch.constant.bool"() <{value = false}> : () -> !torch_bool
      
      %const_int1 = "torch.constant.int"() <{value = 1 : i32}> : () -> !torch_int
      %const_int2 = "torch.constant.int"() <{value = 2 : i32}> : () -> !torch_int
      
      %list1 = "torch.prim.ListConstruct"(%const_int1, %const_int2) : (!torch_int, !torch_int) -> !torch_list
      %list2 = "torch.prim.ListConstruct"(%const_int2, %const_int1) : (!torch_int, !torch_int) -> !torch_list
      
      %cond1 = "torch.aten.eq"(%const_true, %const_true) : (!torch_bool, !torch_bool) -> !torch_bool
      %cond2 = "torch.aten.eq"(%const_false, %const_false) : (!torch_bool, !torch_bool) -> !torch_bool
      
      %select1 = "torch.aten.select.int"(%arg0, %const_int1, %const_int2) : (!torch_vtensor_lit, !torch_int, !torch_int) -> !torch_vtensor_lit
      %select2 = "torch.aten.select.int"(%arg0, %const_int2, %const_int1) : (!torch_vtensor_lit, !torch_int, !torch_int) -> !torch_vtensor_lit
      
      %size1 = "torch.aten.size.int"(%select1, %const_int1) : (!torch_vtensor_lit, !torch_int) -> !torch_int
      %size2 = "torch.aten.size.int"(%select2, %const_int2) : (!torch_vtensor_lit, !torch_int) -> !torch_int
      
      %ret_value = "torch.aten.cat"(%select1, %select2) : (!torch_vtensor_lit, !torch_vtensor_lit) -> !torch_vtensor_lit
      "func.return"(%ret_value) : (!torch_vtensor_lit) -> ()
  }) : () -> ()
}) : () -> ()