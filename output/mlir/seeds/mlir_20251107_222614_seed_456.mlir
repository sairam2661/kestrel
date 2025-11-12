"builtin.module"() ({
  "func.func"() <{function_type = (i8, f64, vector<4xi32>) -> (i64, vector<8xi1>), sym_name = "complex_fuzz_case"}> ({
    ^bb0(%arg0: i8, %arg1: f64, %arg2: vector<4xi32>):
      %0 = "arith.constant"() <{value = 255 : i8}> : () -> i8
      %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflowFlagsAttr}> : (i8, i8) -> i8
      %2 = "arith.constant"() <{value = 1.000000e+00 : f64}> : () -> f64
      %3 = "arith.addf"(%arg1, %2) <{fastmath = #arith_fastmathFlagsAttr}> : (f64, f64) -> f64

      %4 = "vector.splat"() <{splat_value = 42 : i32}> : () -> vector<4xi32>
      %5 = "vector.add"(%arg2, %4) : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>

      %6 = "arith.extui"(%1) <{overflowFlags = #arith_overflowFlagsAttr}> : (i8) -> i64
      %7 = "vector.cast"(%5) <{source_type = vector<4xi32>, target_type = vector<8xi1>}> : (vector<4xi32>) -> vector<8xi1>
      
      "func.return"(%6, %7) : (i64, vector<8xi1>) -> ()
  }) : () -> ()
}) : () -> ()