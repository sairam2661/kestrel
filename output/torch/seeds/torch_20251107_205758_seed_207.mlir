"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvtensor) -> !torchvvector, sym_name = "complex_tensor_operation"}> ({
    ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor):
      %cst = "torch.constant.float"() <{value = 3.14 : f64}> : () -> !torchvfloat
      %cst2 = "torch.constant.int"() <{value = 10 : i64}> : () -> !torchvint
      %cst3 = "torch.constant.int"() <{value = 8 : i64}> : () -> !torchvint
      %cst4 = "torch.constant.str"() <{value = "slice"}> : () -> !torchvstr
      %cst5 = "torch.constant.none"() : () -> !torchvnone
      
      %viewed0 = "torch.aten.view"(%arg0, %cst3, %cst2) : (!torchvtensor, !torchvint, !torchvint) -> !torchvvector
      %sliced = "torch.aten.slice.Tensor"(%viewed0, %cst2, %cst, %cst2) : (!torchvvector, !torchvint, !torchvfloat, !torchvint) -> !torchvvector
      %size = "torch.aten.size.int"(%arg1, %cst2) : (!torchvtensor, !torchvint) -> !torchvint
      %viewed1 = "torch.aten.view"(%arg1, %size, %cst2) : (!torchvtensor, !torchvint, !torchvint) -> !torchvvector
      
      %added = "torch.aten.add.Tensor"(%sliced, %viewed1) : (!torchvvector, !torchvvector) -> !torchvvector
      
      "func.return"(%added) : (!torchvvector) -> ()
  }) : () -> ()
}) : () -> ()