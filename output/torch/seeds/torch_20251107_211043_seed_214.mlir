"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_list, !torch_vtensor_list, !torch_vtensor_list, !torch_vtensor_list, !torch_vtensor_list, !torch_vtensor_list) -> !torch_vtensor_list, sym_name = "cross_dialect_mix$complex"}> ({
  ^bb0(%arg0: !torch_vtensor_list, %arg1: !torch_vtensor_list, %arg2: !torch_vtensor_list, %arg3: !torch_vtensor_list, %arg4: !torch_vtensor_list, %arg5: !torch_vtensor_list):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %2 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor_list) -> !torch_tensor_int_list
    %3 = "torch.aten.slice.Tensor"(%arg1, %1, %0, %1) : (!torch_vtensor_list, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_list
    %4 = "scf.for"() ( ) {
      "scf.yield" 	= "scf.yield" : () -> ()
    } : () -> ()
    %5 = "torch.aten.cat"(%arg2, %arg3) : (!torch_vtensor_list, !torch_vtensor_list) -> !torch_vtensor_list
    %6 = "torch.prim.NumToTensor.Scalar"(%1) : (!torch_int) -> !torch_float
    %7 = "torch.aten.view"(%arg4, %2) : (!torch_vtensor_list, !torch_tensor_int_list) -> !torch_vtensor_list
    %8 = "torch.aten.slice.Tensor"(%arg5, %1, %1, %1) : (!torch_vtensor_list, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_list
    %9 = "torch.aten.view"(%8, %2) : (!torch_vtensor_list, !torch_tensor_int_list) -> !torch_vtensor_list
    "func.return"(%9) : (!torch_vtensor_list) -> ()
  }) : () -> ()
}) : () -> ()