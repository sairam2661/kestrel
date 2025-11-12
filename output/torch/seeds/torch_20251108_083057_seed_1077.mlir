"builtin.module"() ({
  "func.func"() <{function_type = (!torchconstantfp, !torchconstantbool) -> !torchtensor, sym_name = "torchcomplexexample"}> ({
    ^bb0(%arg0: !torchconstantfp, %arg1: !torchconstantbool):
      %0 = "torch.prim.NumToTensor.Scalar"(%arg0) : (!torchconstantfp) -> !torchtensor
      %1 = "torch.prim.NumToTensor.Scalar"(%arg1) : (!torchconstantbool) -> !torchtensor
      %2 = "torch.aten.item"(%0) : (!torchtensor) -> !torchconstantfp
      %3 = "torch.aten.item"(%1) : (!torchtensor) -> !torchconstantbool
      %4 = "torch.constant.float"() <{value = 3.14 : f32}> : () -> !torchtensor
      %5 = "torch.constant.bool"() <{value = true}> : () -> !torchtensor
      %6 = "torch.aten._make_per_tensor_quantized_tensor"(%4, %5, 1.0, 0) : (!torchtensor, !torchtensor, f32, i32) -> !torchtensor
      "func.return"(%6) : (!torchtensor) -> ()
  }) : () -> ()
}) : () -> ()