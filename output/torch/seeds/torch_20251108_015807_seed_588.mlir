"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_1, !torch_vtensor_2) -> !torch_vtensor_3, sym_name = "fuzz_rare_ops"}> ({
    ^bb0(%arg0: !torch_vtensor_1, %arg1: !torch_vtensor_2):
      %0 = "torch.prim.NumToTensor.Scalar"(%arg0) : (!torch_vtensor_1) -> !torch_vtensor_3
      %1 = "torch.aten._shape_as_tensor"(%0) : (!torch_vtensor_3) -> !torch_vtensor_4
      %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_vtensor_5
      %3 = "torch.aten.size.int"(%1, %2) : (!torch_vtensor_4, !torch_vtensor_5) -> !torch_vtensor_6
      %4 = "torch.prim.NumToTensor.Scalar"(%3) : (!torch_vtensor_6) -> !torch_vtensor_7
      %5 = "torch.aten.eq.Tensor"(%0, %4) : (!torch_vtensor_3, !torch_vtensor_7) -> !torch_vtensor_8
      %6 = "torch.aten.add.Tensor"(%0, %4) : (!torch_vtensor_3, !torch_vtensor_7) -> !torch_vtensor_9
      %7 = "torch.constant.bool"() <{value = true}> : () -> !torch_vtensor_10
      %8 = "torch.aten.cat"(%5, %6, %7) : (!torch_vtensor_8, !torch_vtensor_9, !torch_vtensor_10) -> !torch_vtensor_11
      "func.return"(%8) : (!torch_vtensor_11) -> ()
  }) : () -> ()
}) : () -> ()


!torch_vtensor_1 =  type  tensor<3x2x3xi32>
!torch_vtensor_2 =  type  tensor<3x2x3xi32>
!torch_vtensor_3 =  type  tensor<3x2x3xi64>
!torch_vtensor_4 =  type  tensor<3xi64>
!torch_vtensor_5 =  type  tensor<1xi64>
!torch_vtensor_6 =  type  tensor<1xi64>
!torch_vtensor_7 =  type  tensor<1xi64>
!torch_vtensor_8 =  type  tensor<3x2x3xi64>
!torch_vtensor_9 =  type  tensor<3x2x3xi64>
!torch_vtensor_10 =  type  tensor<3x2x3xi1>
!torch_vtensor_11 =  type  tensor<3x2x3xi1> 

"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_1, !torch_vtensor_2) -> !torch_vtensor_3, sym_name = "fuzz_rare_ops"}> ({
    ^bb0(%arg0: !torch_vtensor_1, %arg1: !torch_vtensor_2):
      %0 = "torch.prim.NumToTensor.Scalar"(%arg0) : (!torch_vtensor_1) -> !torch_vtensor_3
      %1 = "torch.aten._shape_as_tensor"(%0) : (!torch_vtensor_3) -> !torch_vtensor_4
      %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_vtensor_5
      %3 = "torch.aten.size.int"(%1, %2) : (!torch_vtensor_4, !torch_vtensor_5) -> !torch_vtensor_6
      %4 = "torch.prim.NumToTensor.Scalar"(%3) : (!torch_vtensor_6) -> !torch_vtensor_7
      %5 = "torch.aten.eq.Tensor"(%0, %4) : (!torch_vtensor_3, !torch_vtensor_7) -> !torch_vtensor_8
      %6 = "torch.aten.add.Tensor"(%0, %4) : (!torch_vtensor_3, !torch_vtensor_7) -> !torch_vtensor_9
      %7 = "torch.constant.bool"() <{value = true}> : () -> !torch_vtensor_10
      %8 = "torch.aten.cat"(%5, %6, %7) : (!torch_vtensor_8, !torch_vtensor_9, !torch_vtensor_10) -> !torch_vtensor_11
      "func.return"(%8) : (!torch_vtensor_11) -> ()
  }) : () -> ()
}) : () -> ()


!torch_vtensor_1 =  type  tensor<3x2x3xi32>
!torch_vtensor_2 =  type  tensor<3x2x3xi32>
!torch_vtensor_3 =  type  tensor<3x2x3xi64>
!torch_vtensor_4 =  type  tensor<3xi64>
!torch_vtensor_5 =  type  tensor<1xi64>
!torch_vtensor_6 =  type  tensor<1xi64>
!torch_vtensor_7 =  type  tensor<1xi64>
!torch_vtensor_8 =  type  tensor<3x2x3xi64>
!torch_vtensor_9 =  type  tensor<3x2x3xi64>
!torch_vtensor_10 =  type  tensor<3x2x3xi1>
!torch_vtensor_11 =  type  tensor<3x2x3xi1> 

"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_1, !torch_vtensor_2) -> !torch_vtensor_3, sym_name = "fuzz_rare_ops"}> ({
    ^bb0(%arg0: !torch_vtensor_1, %arg1: !torch_vtensor_2):
      %0 = "torch.prim.NumToTensor.Scalar"(%arg0) : (!torch_vtensor_1) -> !torch_vtensor_3
      %1 = "torch.aten._shape_as_tensor"(%0) : (!torch_vtensor_3) -> !torch_vtensor_4
      %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_vtensor_5
      %3 = "torch.aten.size.int"(%1, %2) : (!torch_vtensor_4, !torch_vtensor_5) -> !torch_vtensor_6
      %4 = "torch.prim.NumToTensor.Scalar"(%3) : (!torch_vtensor_6) -> !torch_vtensor_7
      %5 = "torch.aten.eq.Tensor"(%0, %4) : (!torch_vtensor_3, !torch_vtensor_7) -> !torch_vtensor_8
      %6 = "torch.aten.add.Tensor"(%0, %4) : (!torch_vtensor_3, !torch_vtensor_7) -> !torch_vtensor_9
      %7 = "torch.constant.bool"() <{value = true}> : () -> !torch_vtensor_10
      %8 = "torch.aten.cat"(%5, %6, %7) : (!torch_vtensor_8, !torch_vtensor_9, !torch_vtensor_10) -> !torch_vtensor_11
      "func.return"(%8) : (!torch_vtensor_11) -> ()
  }) : () -> ()
}) : () -> ()


!torch_vtensor_1 =  type  tensor<3x2x3xi32>
!torch_vtensor_2 =  type  tensor<3x2x3xi32>
!torch_vtensor_3 =  type  tensor<3x2x3xi64>
!torch_vtensor_4 =  type  tensor<3xi64>
!torch_vtensor_5 =  type  tensor<1xi64>
!torch_vtensor_6 =  type  tensor<1xi64>
!torch_vtensor_7 =  type  tensor<1xi64>
!torch_vtensor_8 =  type  tensor<3x2x3xi64>
!torch_vtensor_9 =  type  tensor<3x2x3xi64>
!torch_vtensor_10 =  type  tensor<3x2x3xi1>
!torch_vtensor_11 =  type  tensor<3x2x3xi1> 

"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_1, !torch_vtensor_2) -> !torch_vtensor_3, sym_name = "fuzz_rare_ops"}> ({
    ^bb0(%arg0: !torch_vtensor_1, %arg1: !torch_vtensor_2):
      %0 = "torch.prim.NumToTensor.Scalar"(%