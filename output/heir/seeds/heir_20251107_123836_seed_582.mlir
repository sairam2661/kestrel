"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi8>) -> tensor<4xi32>, sym_name = "complex_interaction"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi8>):
    %0 = "arith.constant"() <{value = 2 : index}> : () -> index
    %1 = "tensor.extract"(%arg1, %0) : (tensor<4xi8>, index) -> i8
    %2 = "arith.extsi"(%1) : (i8) -> i32
    %3 = "arith.addi"(%arg0, %2) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, i32) -> tensor<4xi32>
    %4 = "scf.for"(%arg0, %0, %0) <{step = 1 : index, lowerBound = 0 : index, upperBound = 4 : index}> ({
    ^bb0(%arg2: tensor<4xi32>, %arg3: index):
      %5 = "tensor.extract"(%arg2, %arg3) : (tensor<4xi32>, index) -> i32
      %6 = "arith.muli"(%5, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %7 = "tensor.insert"(%6, %arg2, %arg3) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
      "scf.yield"(%7) : (tensor<4xi32>) -> ()
    }) : (tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%4) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()