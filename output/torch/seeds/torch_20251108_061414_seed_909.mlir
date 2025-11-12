"builtin.module"() ({
  "func.func"() <{function_type = (!torchv10tensor, !torchv10tensor) -> !torchv10tensor, sym_name = "unique_fuzz_test"}> ({
  ^bb0(%arg0: !torchv10tensor, %arg1: !torchv10tensor):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchv10tensor
    %1 = "torch.constant.bool"() <{value = true}> : () -> !torchv10tensor
    %2 = "torch.constant.str"() <{value = "test"}> : () -> !torchv10tensor
    %3 = "torch.constant.none"() : () -> !torchv10tensor
    %4 = "torch.prim.ListConstruct"(%arg0, %arg1) : (!torchv10tensor, !torchv10tensor) -> !torchv10list
    %5 = "torch.aten.view"(%arg0, %0) : (!torchv10tensor, !torchv10tensor) -> !torchv10tensor
    %6 = "torch.aten.slice.Tensor"(%arg1, %0, %0, %0, %0) : (!torchv10tensor, !torchv10tensor, !torchv10tensor, !torchv10tensor, !torchv10tensor) -> !torchv10tensor
    %7 = "torch.aten.size.int"(%arg0) : (!torchv10tensor) -> !torchv10tensor
    %8 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %0, %0, %0) : (!torchv10tensor, !torchv10tensor, !torchv10tensor, !torchv10tensor) -> !torchv10tensor
    %9 = "torch.aten.index_select"(%arg0, %0, %0) : (!torchv10tensor, !torchv10tensor, !torchv10tensor) -> !torchv10tensor
    %10 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torchv10tensor, !torchv10tensor) -> !torchv10tensor
    %11 = "torch.aten.item"(%arg0) : (!torchv10tensor) -> !torchv10tensor
    %12 = "torch.prim.NumToTensor.Scalar"(%0) : (!torchv10tensor) -> !torchv10tensor
    %13 = "torch.aten._shape_as_tensor"(%arg0) : (!torchv10tensor) -> !torchv10tensor
    %14 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchv10tensor, !torchv10tensor) -> !torchv10tensor
    "func.return"(%14) : (!torchv10tensor) -> ()
  }) : () -> ()
}) : () -> ()