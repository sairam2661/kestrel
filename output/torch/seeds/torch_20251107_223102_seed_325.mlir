"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vTensorType_4xi64, !torch_vTensorType_4xi1, !torch_vTensorType_1xi64) -> !torch_vTensorType_4xi64, sym_name = "fuzz_torch_add_and_cat"}> ({
    ^bb0(%arg0: !torch_vTensorType_4xi64, %arg1: !torch_vTensorType_4xi1, %arg2: !torch_vTensorType_1xi64):
      %0 = "torch.aten.add.Tensor"(%arg0, %arg2) : (!torch_vTensorType_4xi64, !torch_vTensorType_1xi64) -> !torch_vTensorType_4xi64
      %1 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vTensorType_4xi64) -> !torch_vTensorType_1xi64
      %2 = "torch.aten.size.int"(%arg0, %torch_constant_int_0) : (!torch_vTensorType_4xi64, !torch_vTensorType_1xi64) -> i64
      %3 = "torch.prim.NumToTensor.Scalar"(%2) : (i64) -> !torch_vTensorType_1xi64
      %4 = "torch.aten.cat"(%0, %3) : (!torch_vTensorType_4xi64, !torch_vTensorType_1xi64) -> !torch_vTensorType_5xi64
      "func.return"(%4) : (!torch_vTensorType_5xi64) -> ()
  }) : () -> ()
}) : () -> ()