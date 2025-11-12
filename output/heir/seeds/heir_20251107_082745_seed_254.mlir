"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x2xi32>, i32) -> tensor<4x2xi32>, sym_name = "complex_tensor_operations"}> ({
  ^bb0(%arg0: tensor<4x2xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %3 = "arith.muli"(%arg1, %2) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %4 = "arith.addi"(%arg0, %3) <{overflowFlags = #arith_overflow_none}> : (tensor<4x2xi32>, i32) -> tensor<4x2xi32>
    %5 = "arith.cmpi"(%arg1, %0) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %6 = "arith.select"(%5, %4, %arg0) : (i1, tensor<4x2xi32>, tensor<4x2xi32>) -> tensor<4x2xi32>
    %7 = "arith.mulf"(%arg1, %1) <{fastmath = #arith_fastmath_none}> : (i32, i32) -> f32
    %8 = "arith.addf"(%7, %7) <{fastmath = #arith_fastmath_none}> : (f32, f32) -> f32
    %9 = "arith.subi"(%arg0, %3) <{overflowFlags = #arith_overflow_none}> : (tensor<4x2xi32>, i32) -> tensor<4x2xi32>
    "func.return"(%9) : (tensor<4x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()