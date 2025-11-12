"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor  ,!torch_vtensor  ) -> !torch_vtensor  , sym_name = "tensor_complex_interaction"}> ({
    ^bb0(%arg0: !torch_vtensor  , %arg1: !torch_vtensor  ):
      %0 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %1 = "torch.constant.str"() <{value = "floor"}> : () -> !torch_str
      %2 = "torch.aten.slice.Tensor"(%arg0, %0, %0, %0, %0) : (!torch_vtensor  , !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor  
      %3 = "torch.aten.slice.Tensor"(%arg1, %0, %0, %0, %0) : (!torch_vtensor  , !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor  
      %4 = "torch.aten.cat"(%arg0, %arg2) : (!torch_vtensor  , !torch_vtensor  ) -> !torch_vtensor  
      %5 = "torch.aten.cat"(%arg1, %arg3) : (!torch_vtensor  , !torch_vtensor  ) -> !torch_vtensor  
      %6 = "torch.aten.add.Tensor"(%4, %5, %0) : (!torch_vtensor  , !torch_vtensor  , !torch_int) -> !torch_vtensor  
      %7 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensor  , !torch_vtensor  ) -> !torch_vtensor  
      "func.return"(%6, %7) : (!torch_vtensor  , !torch_vtensor  ) -> ()
  }) : () -> ()
}) : () -> ()