"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_2xi32, !torch_vtensor_2xi64) -> !torch_vtensor_2xi32, sym_name = "mixed_type_operations"}> ({
  ^bb0(%arg0: !torch_vtensor_2xi32, %arg1: !torch_vtensor_2xi64):
    %0 = "torch.aten.add"(%arg0, %arg1) : (!torch_vtensor_2xi32, !torch_vtensor_2xi64) -> !torch_vtensor_2xi32
    %1 = "torch.constant.int"() <{value = 10 : i64}> : () -> !torch_int
    %2 = "torch.aten.mul"(%0, %1) : (!torch_vtensor_2xi32, !torch_int) -> !torch_vtensor_2xi32
    %3 = "torch.aten.relu"(%2) : (!torch_vtensor_2xi32) -> !torch_vtensor_2xi32
    "func.return"(%3) : (!torch_vtensor_2xi32) -> ()
  }) : () -> ()
}) : () -> ()