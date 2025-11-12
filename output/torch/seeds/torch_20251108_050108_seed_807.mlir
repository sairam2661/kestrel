"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_1xi32, !torch_vtensor_1xi32) -> !torch_vtensor_1xi32, sym_name = "unusual_sequence_function"}> ({
    ^bb0(%arg0: !torch_vtensor_1xi32, %arg1: !torch_vtensor_1xi32):
      %0 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %1 = "torch.prim.ListConstruct"(%arg0, %arg1) : (!torch_vtensor_1xi32, !torch_vtensor_1xi32) -> !torch_list_vtensor
      %2 = "torch.aten.size.int"(%arg0) : (!torch_vtensor_1xi32) -> !torch_int
      %3 = "torch.aten._shape_as_tensor"(%2) : (!torch_int) -> !torch_vtensor_1xi64
      %4 = "torch.aten.slice.Tensor"(%arg0, %3, %3, %3, %3) : (!torch_vtensor_1xi32, !torch_vtensor_1xi64, !torch_vtensor_1xi64, !torch_vtensor_1xi64, !torch_vtensor_1xi64) -> !torch_vtensor_1xi32
      %5 = "torch.aten.add.Tensor"(%arg1, %4) : (!torch_vtensor_1xi32, !torch_vtensor_1xi32) -> !torch_vtensor_1xi32
      "func.return"(%5) : (!torch_vtensor_1xi32) -> ()
  }) : () -> ()
}) : () -> ()