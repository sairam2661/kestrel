"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_123456, !torch_i32) -> !torch_vtensor_123456, sym_name = "torch.aten.dynamic_shape"}> ({
  ^bb0(%arg0: !torch_vtensor_123456, %arg1: !torch_i32):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_i32
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_i32
    %2 = "torch.aten.size.int"(%arg0, %0) : (!torch_vtensor_123456, !torch_i32) -> !torch_i32
    %3 = "torch.aten.size.int"(%arg0, %1) : (!torch_vtensor_123456, !torch_i32) -> !torch_i32
    %4 = "torch.prim.ListConstruct"(%2, %3) : (!torch_i32, !torch_i32) -> !torch_list_i32
    %5 = "torch.aten.view"(%arg0, %4) : (!torch_vtensor_123456, !torch_list_i32) -> !torch_vtensor_123456
    "func.return"(%5) : (!torch_vtensor_123456) -> ()
  }) : () -> ()
}) : () -> ()