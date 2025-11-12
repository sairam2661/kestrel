"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_of_shape_3x3_i32, !torch_vtensor_of_shape_3x3_i32) -> !torch_vtensor_of_shape_3x3_i32, sym_name = "fuzz_torch_operations"}> ({
    ^bb0(%arg0: !torch_vtensor_of_shape_3x3_i32, %arg1: !torch_vtensor_of_shape_3x3_i32):
      %0 = "torch.aten.size.int"(%arg0) : (!torch_vtensor_of_shape_3x3_i32) -> !torch_vtensor_of_shape_1_i64
      %1 = "torch.aten.size.int"(%arg1) : (!torch_vtensor_of_shape_3x3_i32) -> !torch_vtensor_of_shape_1_i64
      %2 = "torch.aten.eq.Tensor"(%0, %1) : (!torch_vtensor_of_shape_1_i64, !torch_vtensor_of_shape_1_i64) -> !torch_vtensor_of_shape_1_i1
      %3 = "torch.constant.int"() <{value = 1 : i32}> : () -> !torch_vtensor_of_shape_1_i32
      %4 = "torch.aten.add.Tensor"(%arg0, %arg1, %3) : (!torch_vtensor_of_shape_3x3_i32, !torch_vtensor_of_shape_3x3_i32, !torch_vtensor_of_shape_1_i32) -> !torch_vtensor_of_shape_3x3_i32
      %5 = "func.return"(%4) : (!torch_vtensor_of_shape_3x3_i32) -> ()
  }) : () -> ()
}) : () -> ()


"torch_vtensor_of_shape_3x3_i32"() ({
  "tensor<3x3xi32>"
  
                        
  () : () -> ()
}) : () -> ()

"torch_vtensor_of_shape_1_i64"() ({
  "tensor<1xi64>"
  () : () -> ()
}) : () -> ()

"torch_vtensor_of_shape_1_i1"() ({
  "tensor<1xi1>"
  () : () -> ()
}) : () -> ()

"torch_vtensor_of_shape_1_i32"() ({
  "tensor<1xi32>"
  () : () -> ()
}) : () -> ()