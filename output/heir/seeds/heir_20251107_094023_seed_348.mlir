"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi32>, i32) -> tensor<2xi32>, sym_name = "dynamic_tensor_manipulation"}> ({
  ^bb0(%arg0: tensor<2xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "scf.if"(%arg1) ({
      %2 = "tensor.extract"(%arg0, %0) : (tensor<2xi32>, index) -> i32
      %3 = "arith.muli"(%2, %2) <{overflowFlags = #arith_overflow_mode}>
      : (i32, i32) -> i32
      %4 = "tensor.insert"(%3, %arg0, %0) : (i32, tensor<2xi32>, index) -> tensor<2xi32>
      "scf.yield"(%4) : (tensor<2xi32>) -> ()
    }, {
      %2 = "tensor.extract"(%arg0, %0) : (tensor<2xi32>, index) -> i32
      %3 = "arith.addi"(%2, %2) <{overflowFlags = #arith_overflow_mode}> : (i32, i32) -> i32
      %4 = "tensor.insert"(%3, %arg0, %0) : (i32, tensor<2xi32>, index) -> tensor<2xi32>
      "scf.yield"(%4) : (tensor<2xi32>) -> ()
    }) : (i32) -> tensor<2xi32>
    "func.return"(%1) : (tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()