"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, i32) -> tensor<4xi32>, sym_name = "complex_example"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %5 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %6 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, index) -> i32
    %7 = "tensor.extract"(%arg0, %1) : (tensor<4xi32>, index) -> i32
    %8 = "arith.addi"(%6, %7) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %9 = "tensor.insert"(%8, %arg0, %0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %10 = "scf.for"(%0, %4) <{lowerBound = #arith_overflownone, upperBound = #arith_overflownone, step = #arith_overflownone}> ({
    ^bb1(%indvar: index):
      %11 = "tensor.extract"(%arg0, %indvar) : (tensor<4xi32>, index) -> i32
      %12 = "arith.addi"(%11, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %13 = "tensor.insert"(%12, %arg0, %indvar) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
      "scf.yield"() : () -> ()
    }) : (tensor<4xi32>) -> ()
    "func.return"(%10) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()