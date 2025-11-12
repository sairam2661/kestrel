"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64, f32) -> (i32, f64), sym_name = "complex_arith_operations"}> ({
  ^bb0(%arg0: i32, %arg1: i64, %arg2: f32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 100 : i64}> : () -> i64
    %2 = "arith.constant"() <{value = 3.14 : f64}> : () -> f64
    %3 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
    %4 = "arith.mulf"(%arg2, %2) <{overflowFlags = #arith_overflowFlags}> : (f32, f64) -> f64
    %5 = "arith.cmpi"("sgt", %arg1, %1) : (i64, i64) -> i1
    %6 = "arith.select"(%5, %3, %arg0) : (i1, i32, i32) -> i32
    "func.return"(%6, %4) : (i32, f64) -> ()
  }) : () -> ()
  "transform.named_sequence"() <{function_type = (!transformany_op) -> (), sym_name = "intensive_transformations"}> ({
  ^bb0(%arg0: !transformany_op):
    %0 = "transform.structured.match"(%arg0) <{ops = ["arith.addi", "arith.mulf"]}> : (!transformany_op) -> !transformany_op
    %1 = "transform.apply_patterns"(%0) <{max_iterations = 10 : i64, max_num_rewrites = 5 : i64}> ({
      "transform.apply_patterns.canonicalization"() : () -> ()
    }) : (!transformany_op) -> !transformany_op
    "transform.yield"() : () -> ()
  }) : () -> ()
}) : () -> ()