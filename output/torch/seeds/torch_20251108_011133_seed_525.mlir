"builtin.module"() ({
  "func.func"() <{function_type = (!torchTensor) -> !torchTensor, sym_name = "tensor_concat_and_shape"}> ({
    ^bb0(%arg0: !torchTensor, %arg1: !torchTensor):
      %shape0 = "torch.aten.size.int"(%arg0) : (!torchTensor) -> !torchTensor
      %shape1 = "torch.aten.size.int"(%arg1) : (!torchTensor) -> !torchTensor
      %cat = "torch.aten.cat"(%arg0, %arg1) : (!torchTensor, !torchTensor) -> !torchTensor
      %shapecat = "torch.aten.size.int"(%cat) : (!torchTensor) -> !torchTensor
      "func.return"(%shapecat) : (!torchTensor) -> ()
  }) : () -> ()
}) : () -> ()