"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, memref<64xi32>) -> (i32, f32), sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: f32, %arg2: memref<64xi32>):
    %0 = "arith.constant"() <{value = 100 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) <{fastmath = #arith_fastmath_attrs_independent_nomathy}> : (i32, i32) -> i32
    %2 = "tosa.const"() <{value = 3.14 : f32}> : () -> f32
    %3 = "arith.addf"(%arg1, %2) <{fastmath = #arith_fastmath_attrs_independent_nomathy}> : (f32, f32) -> f32
    %4 = "memref.load"(%arg2, %1) : (memref<64xi32>, i32) -> i32
    %5 = "arith.cmpi"(%4, %0, 10) <{predicate = 5 : i64}> : (i32, i32, i64) -> i1
    "scf.if"(%5) ({
    ^bb0:
      %6 = "arith.addi"(%arg0, %4) <{fastmath = #arith_fastmath_attrs_independent_nomathy}> : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }) : (i1) -> ()
    "func.return"(%1, %3) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()