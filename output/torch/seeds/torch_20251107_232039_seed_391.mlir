"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvtensor, !torchvtensor) -> !torchvtensor, sym_name = "tensor_mixer"}> ({
    ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor, %arg2: !torchvtensor):
      %const1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchint
      %const2 = "torch.constant.float"() <{value = 0.5 : f32}> : () -> !torchfloat
      %add = "torch.aten.add"(%arg0, %arg1) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      %mul = "torch.aten.mul"(%add, %const2) : (!torchvtensor, !torchfloat) -> !torchvtensor
      %sub = "torch.aten.sub"(%arg2, %mul) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      %pow = "torch.aten.pow"(%sub, %const1) : (!torchvtensor, !torchint) -> !torchvtensor
      "func.return"(%pow) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()