"builtin.module"() ({
  "func.func"() <{function_type = (!torchtensor, !torchtensor) -> !torchtensor, sym_name = "fuzzing_complex_func"}> ({
  ^bb0(%arg0: !torchtensor, %arg1: !torchtensor):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchint
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchint
    %2 = "torch.constant.float"() <{value = 2.5 : f32}> : () -> !torchfloat
    %3 = "torch.constant.str"() <{value = "hello"}> : () -> !torchstr
    %4 = "torch.prim.NumToTensor.Scalar"(%2) : (!torchfloat) -> !torchtensor
    %5 = "torch.aten.slice.Tensor"(%arg0, %0, %0, %1) : (!torchtensor, !torchint, !torchint, !torchint) -> !torchtensor
    %6 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torchtensor, !torchtensor) -> !torchtensor
    %7 = "torch.aten.item"(%5) : (!torchtensor) -> !torchint
    %8 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %2, %7, %7) : (!torchtensor, !torchfloat, !torchint, !torchint) -> !torchtensor
    "func.return"(%8) : (!torchtensor) -> ()
  }) : () -> ()
}) : () -> ()