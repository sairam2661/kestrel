"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal_0, !torch_vtensor_literal_1) -> !torch_vtensor_literal_2, sym_name = "fuzz_func"}> ({
    ^bb0(%arg0: !torch_vtensor_literal_0, %arg1: !torch_vtensor_literal_1):
      %const_bool1 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %const_bool2 = "torch.constant.bool"() <{value = false}> : () -> !torch_bool
      %const_int1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %const_int2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %const_float1 = "torch.constant.float"() <{value = 0.5 : f32}> : () -> !torch_float
      %const_str = "torch.constant.str"() <{value = "test"}> : () -> !torch_str
      
      %list1 = "torch.prim.ListConstruct"(%const_int1, %const_int2) : (!torch_int, !torch_int) -> !torch_list_int
      %list2 = "torch.prim.ListConstruct"(%const_bool1, %const_bool2) : (!torch_bool, !torch_bool) -> !torch_list_bool
      
      %slice1 = "torch.aten.slice.Tensor"(%arg0, %const_int1, %const_int2, %const_int1) : (!torch_vtensor_literal_0, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_literal_0
      %slice2 = "torch.aten.slice.Tensor"(%arg1, %const_int2, %const_int1, %const_int2) : (!torch_vtensor_literal_1, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_literal_1
      
      %add1 = "torch.aten.add.Tensor"(%slice1, %slice2) : (!torch_vtensor_literal_0, !torch_vtensor_literal_1) -> !torch_vtensor_literal_2
      
      "func.return"(%add1) : (!torch_vtensor_literal_2) -> ()
  }) : () -> ()
}) : () -> ()