"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch.aten.custom_op"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %1 = "torch.aten._shape_as_tensor"(%0) : (!torch_vtensor) -> !torch_vtensor
      %2 = "torch.aten.size.int"(%1, %c0) : (!torch_vtensor, !torch_int) -> !torch_int
      %3 = "torch.aten.size.int"(%1, %c1) : (!torch_vtensor, !torch_int) -> !torch_int
      %4 = "torch.prim.NumToTensor.Scalar"(%2) : (!torch_int) -> !torch_vtensor
      %5 = "torch.prim.NumToTensor.Scalar"(%3) : (!torch_int) -> !torch_vtensor
      %6 = "torch.prim.ListConstruct"(%4, %5) : (!torch_vtensor, !torch_vtensor) -> !torch_list
      %7 = "torch.aten.cat"(%6, %c0) : (!torch_list, !torch_int) -> !torch_vtensor
      "func.return"(%7) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()

#where
  
  
  = "torch.vtensor.literal"  : () -> !torch_vtensor
  ,
   tensor<4x3x2xf32>
  ,
  tensor<2x3x4xf32>
  ,
   tensor<2x3xf32>
  ,
  tensor<4x3xf32>
  ,
  tensor<4x3x2xf32>
  ,
  tensor<2x3x4xf32>
  ,
  tensor<2x3xf32>
  ,
  tensor<4x3xf32>
  ,
  tensor<4x3x2xf32>

  ,
   tensor<4x3x2xf32>
  ,
  tensor<2x3x4xf32>
  ,
  tensor<2x3xf32>
  ,
  tensor<4x3xf32>
  ,
  tensor<4x3x2xf32>
  ,
  tensor<2x3x4xf32>
  ,
  tensor<2x3xf32>
  ,
  tensor<4x3xf32>
  ,
  tensor<4x3x2xf32>,

   tensor<4x3x2xf32>
  ,
  tensor<2x3x4xf32>
  ,
  tensor<2x3xf32>
  ,
  tensor<4x3xf32>
  ,
  tensor<4x3x2xf32>
  ,
  tensor<2x3x4xf32>
  ,
  tensor<2x3xf32>
  ,
  tensor<4x3xf32>
  ,
  tensor<4x3x2xf32>

  ,
   tensor<4x3x2xf32>
  ,
  tensor<2x3x4xf32>
  ,
  tensor<2x3xf32>
  ,
  tensor<4x3xf32>
  ,
  tensor<4x3x2xf32>
  ,
  tensor<2x3x4xf32>
  ,
  tensor<2x3xf32>
  ,
  tensor<4x3xf32>
  ,
  tensor<4x3x2xf32>,

   tensor<4x3x2xf32>
  ,
  tensor<2x3x4xf32>
  ,
  tensor<2x3xf32>
  ,
  tensor<4x3xf32>
  ,
  tensor<4x3x2xf32>
  ,
  tensor<2x3x4xf32>
  ,
  tensor<2x3xf32>
  ,
  tensor<4x3xf32>
  ,
  tensor<4x3x2xf32>

  ,
   tensor<4x3x2xf32>
  ,
  tensor<2x3x4xf32>
  ,
  tensor<2x3xf32>
  ,
  tensor<4x3xf32>
  ,
  tensor<4x3x2xf32>
  ,
  tensor<2x3x4xf32>
  ,
  tensor<2x3xf32>
  ,
  tensor<4x3xf32>
  ,
  tensor<4x3x2xf32>,

   tensor<4x3x2xf32>
  ,
  tensor<2x3x4xf32>
  ,
  tensor<2x3xf32>
  ,
  tensor<4x3xf32>
  ,
  tensor<4x3x2xf32>
  ,
  tensor<2x3x4xf32>
  ,
  tensor<2x3xf32>
  ,
  tensor<4x3xf32>
  ,
  tensor<4x3x2xf32>,

   tensor<4x3x2xf32>
  ,
  tensor<2x3x4xf32>
  ,
  tensor<2x3xf32>
  ,
  tensor<4x3xf32>
  ,
  tensor<4x3x2xf32>
  ,
  tensor<2x3x4xf32>
  ,
  tensor<2x3xf32>
  ,
  tensor<4x3xf32>
  ,
  tensor<4x3x2xf32>,

   tensor<4x3x2xf32>
  ,
  tensor<2x3x4xf32>
  ,
  tensor<2x3xf32>
  ,
  tensor<4x3xf32>
  ,
  tensor<4x3x2xf32>
  ,
  tensor<2x3x4xf32>
  ,
  tensor<2x3xf32>
  ,
  tensor<4x3xf32>
  ,
  tensor<4x3x2xf32>,

   tensor<4x3x2xf32>
  ,
  tensor<2x3x4xf32>
  ,
  tensor<2x3xf32>
  ,
  tensor<4x3xf32>
  ,
  tensor<4x3x2xf32>
  ,
  tensor<2x3x4xf32>
  ,
  tensor<2x3xf32>
  ,
  tensor<4x3xf32>
  ,
  tensor<4x3x2xf32>,

  tensor<4x3x2xf32>
  ,
  tensor<2x3x4xf32>
  ,
  tensor<2x3xf32>
  ,
  tensor<4x3xf32>
  ,
  tensor<4x3x2xf32>
  ,
  tensor<2x3x4xf32>
  ,
  tensor<2x3xf32>
  ,
  tensor<4x3xf32>
  ,
  tensor<4x3x2xf32>,

  tensor<4x3x2xf32>
  ,
  tensor<2x3x4xf32>
  ,
  tensor<2x3xf32>
  ,
  tensor<4x3xf32>
  ,
  tensor<4x3x2xf32>
  ,
  tensor<2x3x4xf32>
  ,
  tensor<2x3xf32>
  ,
  tensor<4x3xf32>
  ,
  tensor<4x3x2xf32>,

  tensor<4x3x2xf32>
  ,
  tensor<2x3x4xf32>
  ,
  tensor<2x3xf32>
  ,
  tensor<4x3xf32>
  ,
  tensor<4x3x2xf32>
  ,
  tensor<2x3x4xf32>
  ,
  tensor<2x3xf32>
  ,
  tensor<4x3xf32>
  ,
  tensor<4x3x2xf32>,

  tensor<4x3x2xf32>
  ,
  tensor<2x3x4xf32>
  ,
  tensor<2x3xf32>
  ,
  tensor<4x3xf32>
  ,
  tensor<4x3x2xf32>
  ,
  tensor<2x3x4xf32>
  ,
  tensor<2x3xf32>
  ,
  tensor<4x3xf32>
  ,
  tensor<4x3x2xf32>,

  tensor<4x3x2xf32>
  ,
  tensor<2x3x4