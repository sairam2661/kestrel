"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_1x32xi32, !torch_vtensor_1x32xi32) -> !torch_vtensor_1x32xi32, sym_name = "unique_op_sequence"}> ({
  ^bb0(%arg0: !torch_vtensor_1x32xi32, %arg1: !torch_vtensor_1x32xi32):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %1 = "torch.aten.slice.Tensor"(%arg0, %0, %0, %0) : (!torch_vtensor_1x32xi32, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_1x32xi32
    %2 = "torch.constant.bool"() <{value = false}> : () -> !torch_bool
    %3 = "torch.prim.ListConstruct"(%0, %0) : (!torch_int, !torch_int) -> !torch_list_int
    %4 = "torch.aten.view"(%1, %3) : (!torch_vtensor_1x32xi32, !torch_list_int) -> !torch_vtensor_1x32xi32
    %5 = "torch.aten.item"(%4) : (!torch_vtensor_1x32xi32) -> !torch_int
    %6 = "torch.prim.NumToTensor.Scalar"(%5) : (!torch_int) -> !torch_vtensor_1xi32
    "func.return"(%6) : (!torch_vtensor_1xi32) -> ()
  }) : () -> ()
}) : () -> ()