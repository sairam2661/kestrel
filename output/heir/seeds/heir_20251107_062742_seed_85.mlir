"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, i32) -> tensor<4xi32>, sym_name = "tensor_manipulation_and_arithmetic"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %4 = "tensor.insert"(%3, %arg0, %1) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %5 = "tensor.insert"(%2, %4, %0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %6 = "arith.cmpi"(%arg1, %0) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %7 = "arith.select"(%6, %arg0, %5) : (i1, tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %8 = "scf.for"(%0, %1, %3) ({
    ^bb1(%iv: i32):
      %9 = "arith.addi"(%iv, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%9) : (i32) -> ()
    }) : (i32) -> ()
    %10 = "tensor.extract"(%7, %2) : (tensor<4xi32>, index) -> i32
    "func.return"(%7) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()