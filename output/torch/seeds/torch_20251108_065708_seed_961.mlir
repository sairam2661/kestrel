"builtin.module"() ({
  "func.func"() <{function_type = (!torch,vector<3xf32>, !torch,i32) -> !torch,i32, sym_name = "test_complex_sequence"}> ({
  ^bb0(%arg0: !torch,vector<3xf32>, 
       tensor<2x3xi32>, 
       tensor<4xi64>, 
       tensor<4xi32> 
       into !torch,i32, 
       tensor<2x3xi32>, 
       tensor<4xi64>, 
       tensor<4xi32>):
    %0 = "torch.aten.size.int"(%arg0) : (!torch,vector<3xf32>) -> !torch,i32
    %1 = "torch.prim.NumToTensor.Scalar"(%0) : (!torch,i32) -> !torch,i64
    %2 = "torch.aten._shape_as_tensor"(%arg0) : (!torch,vector<3xf32>) -> !torch,vector<1xi64>
    %3 = "torch.aten.cat"(%2, %2, %2) : (!torch,vector<1xi64>, !torch,vector<1xi64>, !torch,vector<1xi64>) -> !torch,vector<3xi64>
    %4 = "torch.aten.eq.Tensor"(%3, %1) : (!torch,vector<3xi64>, !torch,i64) -> !torch,vector<3xi1>
    %5 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %4) : (!torch,vector<3xf32>, !torch,vector<3xi1>) -> !torch,vector<3xi8>
    "func.return"(%5) : (!torch,vector<3xi8>) -> ()
  }) : () -> ()
}) : () -> ()