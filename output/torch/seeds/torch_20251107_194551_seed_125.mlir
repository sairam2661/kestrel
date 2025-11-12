"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_4x4xi32, !torch_vtensor_4x4xi32) -> !torch_vtensor_4x4xi32, sym_name = "tensor_add_and_index_select"}> ({
  ^bb0(%arg0: !torch_vtensor_4x4xi32, %arg1: !torch_vtensor_4x4xi32):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %3 = "torch.prim.ListConstruct"(%0, %1, %2) : (!torch_int, !torch_int, !torch_int) -> !torch_list_int
    %4 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_4x4xi32, !torch_vtensor_4x4xi32) -> !torch_vtensor_4x4xi32
    %5 = "torch.aten.index_select"(%4, %0, %3) : (!torch_vtensor_4x4xi32, !torch_int, !torch_list_int) -> !torch_vtensor_4x4xi32
    "func.return"(%5) : (!torch_vtensor_4x4xi32) -> ()
  }) : () -> ()
}) : () -> ()