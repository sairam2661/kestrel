"builtin.module"() ({
  "func.func"() <{function_type = (!torchv10TensorType, !torchv10TensorType) -> !torchv10TensorType, sym_name = "slice_concatenate_unusual"}> ({
  ^bb0(%arg0: !torchv10TensorType, %arg1: !torchv10TensorType):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchv10IntType
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchv10IntType
    %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchv10IntType
    %3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torchv10IntType
    %4 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torchv10IntType
    %5 = "torch.constant.float"() <{value = 1.5 : f64}> : () -> !torchv10FloatType
    %6 = "torch.prim.NumToTensor.Scalar"(%5) : (!torchv10FloatType) -> !torchv10TensorType
    %7 = "torch.aten.slice.Tensor"(%arg0, %0, %1, %2, %3) : (!torchv10TensorType, !torchv10IntType, !torchv10IntType, !torchv10IntType, !torchv10IntType) -> !torchv10TensorType
    %8 = "torch.aten.slice.Tensor"(%arg1, %0, %0, %3, %4) : (!torchv10TensorType, !torchv10IntType, !torchv10IntType, !torchv10IntType, !torchv10IntType) -> !torchv10TensorType
    %9 = "torch.aten.cat"(%7, %8) : (!torchv10TensorType, !torchv10TensorType) -> !torchv10TensorType
    %10 = "torch.aten.add.Tensor"(%9, %6) : (!torchv10TensorType, !torchv10TensorType) -> !torchv10TensorType
    "func.return"(%10) : (!torchv10TensorType) -> ()
  }) : () -> ()
}) : () -> ()