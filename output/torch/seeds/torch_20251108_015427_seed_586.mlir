"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_4xi32, !torch_vtensor_4xi32) -> !torch_vtensor_4xi32, sym_name = "tensor_manipulation"}> ({
    ^bb0(%arg0: !torch_vtensor_4xi32, %arg1: !torch_vtensor_4xi32):
      %0 = "torch.constant.int"() <{value = 0}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 1}> : () -> !torch_int
      %2 = "torch.constant.int"() <{value = 2}> : () -> !torch_int
      %3 = "torch.constant.int"() <{value = 3}> : () -> !torch_int
      %4 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %5 = "torch.prim.ListConstruct"(%1, %2) : (!torch_int, !torch_int) -> !torch_list_int
      %6 = "torch.prim.ListConstruct"(%0, %3) : (!torch_int, !torch_int) -> !torch_list_int
      %7 = "torch.aten.index_select"(%arg0, %0, %5) : (!torch_vtensor_4xi32, !torch_int, !torch_list_int) -> !torch_vtensor_2xi32
      %8 = "torch.aten.index_select"(%arg1, %0, %6) : (!torch_vtensor_4xi32, !torch_int, !torch_list_int) -> !torch_vtensor_2xi32
      %9 = "torch.aten.cat"(%7, %8) : (!torch_vtensor_2xi32, !torch_vtensor_2xi32) -> !torch_vtensor_4xi32
      %10 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor_4xi32) -> !torch_vtensor_1xi64
      %11 = "torch.aten.size.int"(%arg0, %0) : (!torch_vtensor_4xi32, !torch_int) -> !torch_int
      %12 = "torch.prim.NumToTensor.Scalar"(%11) : (!torch_int) -> !torch_vtensor_1xi64
      %13 = "torch.aten.eq.Tensor"(%10, %12) : (!torch_vtensor_1xi64, !torch_vtensor_1xi64) -> !torch_bool
      %14 = "torch.aten.item"(%13) : (!torch_bool) -> !torch_bool
      "func.return"(%9) : (!torch_vtensor_4xi32) -> ()
  }) : () -> ()
}) : () -> ()