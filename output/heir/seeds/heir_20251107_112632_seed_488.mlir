"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<2xi32>) -> tensor<4xi32>, sym_name = "complex_mix"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<2xi32>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "tensor.insert"(%arg1, %arg0, %0) : (tensor<2xi32>, tensor<4xi32>, index) -> tensor<4xi32>
    %3 = "tensor.extract"(%2, %1) : (tensor<4xi32>, index) -> i32
    %4 = "arith.muli"(%3, %3) <{overflowFlags = #arith_overflow_flagless}> : (i32, i32) -> i32
    %5 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_flagless}> : (tensor<4xi32>, tensor<2xi32>) -> tensor<4xi32>
    %6 = "tensor.extract"(%5, %0) : (tensor<4xi32>, index) -> i32
    %7 = "arith.addi"(%4, %6) <{overflowFlags = #arith_overflow_flagless}> : (i32, i32) -> i32
    %8 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %9 = "arith.cmpi"(%7, %8, "eq") : (i32, i32) -> i1
    %10 = "arith.select"(%9, %7, %8) : (i1, i32, i32) -> i32
    %11 = "arith.constant"() <{value = 4 : index}> : () -> index
    %12 = "tensor.insert"(%10, %2, %11) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%12) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()