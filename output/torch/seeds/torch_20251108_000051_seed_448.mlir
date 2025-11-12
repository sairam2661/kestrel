"builtin.module"() ({
  "func.func"() <{function_type = (!torchatenTensor, !torchatenTensor, !torchatenTensor) -> !torchatenTensor, sym_name = "complex_slice_and_add"}> ({
  ^bb0(%arg0: !torchatenTensor, %arg1: !torchatenTensor, %arg2: !torchatenTensor):
    %c1 = "torchaten.constant.int"() <{value = 1 : i64}> : () -> !torchatenInt
    %c2 = "torchaten.constant.int"() <{value = 2 : i64}> : () -> !torchatenInt
    %c3 = "torchaten.constant.int"() <{value = 3 : i64}> : () -> !torchatenInt
    %slice0 = "torchaten.aten.slice.Tensor"(%arg0, %c0, %c1, %c2) : (!torchatenTensor, !torchatenInt, !torchatenInt, !torchatenInt) -> !torchatenTensor
    %slice1 = "torchaten.aten.slice.Tensor"(%arg1, %c0, %c2, %c3) : (!torchatenTensor, !torchatenInt, !torchatenInt, !torchatenInt) -> !torchatenTensor
    %add0 = "torchaten.aten.add.Tensor"(%slice0, %slice1) : (!torchatenTensor, !torchatenTensor) -> !torchatenTensor
    %slice2 = "torchaten.aten.slice.Tensor"(%arg2, %c0, %c1, %c3) : (!torchatenTensor, !torchatenInt, !torchatenInt, !torchatenInt) -> !torchatenTensor
    %add1 = "torchaten.aten.add.Tensor"(%add0, %slice2) : (!torchatenTensor, !torchatenTensor) -> !torchatenTensor
    "func.return"(%add1) : (!torchatenTensor) -> ()
  }) : () -> ()
}) : () -> ()