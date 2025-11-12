"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_i32, !torch_vtensor_i32) -> !torch_vtensor_i32, sym_name = "fuzz_index_select_slice"}> ({
    ^bb0(%arg0: !torch_vtensor_i32, %arg1: !torch_vtensor_i32):
      %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %2 = "torch.constant.none"() : () -> !torch_none
      %3 = "torch.aten.index_select"(%arg0, %0, %arg1) : (!torch_vtensor_i32, !torch_int, !torch_vtensor_i32) -> !torch_vtensor_i32
      %4 = "torch.aten.slice.Tensor"(%3, %0, %0, %1) : (!torch_vtensor_i32, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_i32
      "func.return"(%4) : (!torch_vtensor_i32) -> ()
  }) : () -> ()
}) : () -> ()