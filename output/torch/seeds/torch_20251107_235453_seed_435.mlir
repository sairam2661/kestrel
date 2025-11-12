"builtin.module"() ({
  "func.func"() <{function_type = (!torchCd81de53,vector<2xi32>, vector<2xi32>, vector<2xi32>) -> tensor<2xi32>, sym_name = "torch.aten.add.Tensor$basic"}> ({
  ^bb0(%arg0: !torchCd81de53, %arg1: vector<2xi32>, %arg2: vector<2xi32>):
    %0 = "torch.aten.size.int"(%arg0) : (!torchCd81de53) -> i64
    %1 = "torch.prim.NumToTensor.Scalar"(%0) : (i64) -> tensor<1xi64>
    %2 = "torch.constant.bool"() <{value = true}> : () -> i1
    %3 = "torch.aten._shape_as_tensor"(%1) : (tensor<1xi64>) -> tensor<1xi64>
    %4 = "torch.aten.cat"(%3, %1) : (tensor<1xi64>, tensor<1xi64>) -> tensor<2xi64>
    %5 = "torch.aten._make_per_tensor_quantized_tensor"(%arg1, %arg2, %4) : (vector<2xi32>, vector<2xi32>, tensor<2xi64>) -> !torchCd81de53
    %6 = "torch.aten.add.Tensor"(%arg1, %arg2, %2) : (vector<2xi32>, vector<2xi32>, i1) -> vector<2xi32>
    "func.return"(%6) : (vector<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()