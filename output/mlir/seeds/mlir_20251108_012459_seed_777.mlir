"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64, f32) -> (i32, f32), sym_name = "mixed_type_operations"}> ({
    ^bb0(%arg0: i32, %arg1: i64, %arg2: f32):
      %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 12345678901234 : i64}> : () -> i64
      %2 = "arith.constant"() <{value = 3.14159 : f32}> : () -> f32

      %3 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %4 = "arith.addf"(%arg2, %2) <{overflowFlags = #arith_overflownone}> : (f32, f32) -> f32

      %5 = "arith.cmpi"(%arg1, %1) <{predicate = 1 : i64}> : (i64, i64) -> i1
      %6 = "arith.cmpf"(%arg2, %2) <{predicate = 1 : i64}> : (f32, f32) -> i1

      %7:2 = "scf.if"(%5) ({
        ^bb1:
          %8 = "arith.addi"(%3, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
          %9 = "arith.addf"(%4, %4) <{overflowFlags = #arith_overflownone}> : (f32, f32) -> f32
          "scf.yield"(%8, %9) : (i32, f32) -> ()
      }, {
        ^bb2:
          %10 = "arith.addi"(%3, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
          %11 = "arith.addf"(%4, %2) <{overflowFlags = #arith_overflownone}> : (f32, f32) -> f32
          "scf.yield"(%10, %11) : (i32, f32) -> ()
      }) : (i32, f32) -> (i32, f32)

      "func.return"(%7#0, %7#1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()