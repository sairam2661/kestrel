"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<10x10xi32>) -> (i32, tensor<10x10xi32>), sym_name = "complex_tensor_op"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<10x10xi32>):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "scf.for"(%arg1) <{lowerBound = #arith_constant_i32_0, upperBound = #arith_constant_i32_10, step = #arith_constant_i32_1}> ({
    ^bb1(%arg2: tensor<10x10xi32>, %iv: index):
      %3 = "scf.for"(%arg2) <{lowerBound = #arith_constant_i32_0, upperBound = #arith_constant_i32_10, step = #arith_constant_i32_1}> ({
      ^bb2(%arg3: tensor<10x10xi32>, %iv2: index):
        %4 = "tensor.extract"(%arg3, %iv, %iv2) : (tensor<10x10xi32>, index, index) -> i32
        %5 = "arith.mul"(%4, %4) : (i32, i32) -> i32
        %6 = "tensor.insert"(%5, %arg3, %iv, %iv2) : (i32, tensor<10x10xi32>, index, index) -> tensor<10x10xi32>
        "scf.yield"(%6) : (tensor<10x10xi32>) -> ()
      }) : (tensor<10x10xi32>) -> tensor<10x10xi32>
      "scf.yield"(%3) : (tensor<10x10xi32>) -> ()
    }) : (tensor<10x10xi32>) -> tensor<10x10xi32>
    "func.return"(%1, %2) : (i32, tensor<10x10xi32>) -> ()
  }) : () -> ()
}) : () -> ()