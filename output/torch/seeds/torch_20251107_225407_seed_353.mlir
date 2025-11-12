"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_i1, !torch_vtensor_i32, !torch_vtensor_i32) -> !torch_vtensor_i32, sym_name = "index_select_fuzz_test"}> ({
    ^bb0(%arg0: !torch_vtensor_i1, %arg1: !torch_vtensor_i32, %arg2: !torch_vtensor_i32):
      %c0_i64 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %c1_i64 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %c2_i64 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %c3_i64 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %list0 = "torch.prim.ListConstruct"(%c0_i64, %c1_i64, %c2_i64, %c3_i64) : (!torch_int, !torch_int, !torch_int, !torch_int) -> !torch_list_int
      %tensor_index = "torch.aten.index_select"(%arg1, %c0_i64, %arg2) : (!torch_vtensor_i32, !torch_int, !torch_vtensor_i32) -> !torch_vtensor_i32
      %tensor_slice = "torch.aten.slice.Tensor"(%tensor_index, %c0_i64, %c0_i64, %c2_i64) : (!torch_vtensor_i32, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_i32
      %eq_result = "torch.aten.eq.Tensor"(%tensor_slice, %arg1) : (!torch_vtensor_i32, !torch_vtensor_i32) -> !torch_vtensor_i1
      "func.return"(%tensor_slice) : (!torch_vtensor_i32) -> ()
  }) : () -> ()
}) : () -> ()