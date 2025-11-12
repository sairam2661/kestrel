"builtin.module"() ({
  "func.func"() <{function_type = (i32, index) -> (f32, i32), sym_name = "complex_cross_dialect"}> ({
    ^bb0(%arg0: i32, %arg1: index):
      %0 = "arith.constant"() <{value = 5.000000e+00 : f32}> : () -> f32
      %1 = "arith.constant"() <{value = 3 : i32}> : () -> i32
      %2 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, index) -> i32
      %3:3 = "scf.for"(%arg1, %1, %arg0) ({
      ^bb1(%arg2: index, %arg3: i32, %arg4: f32):
        %5 = "arith.cmpi"(%arg2, %arg1) <{predicate = 4 : i64}> : (index, index) -> i1
        %6 = "scf.if"(%5) ({
        ^bb2:
          %7 = "arith.addf"(%arg4, %0) <{overflowFlags = #arith_overflownone}> : (f32, f32) -> f32
          "scf.yield"(%arg2, %arg3, %7) : (index, i32, f32) -> ()
        }, {
        ^bb3:
          "scf.yield"(%arg2, %arg3, %arg4) : (index, i32, f32) -> ()
        }) : (index, i32, f32) -> ()
        "scf.yield"(%6#0, %6#1, %6#2) : (index, i32, f32) -> ()
      }) : (index, i32, f32) -> (index, i32, f32)
      "func.return"(%3#1, %3#2) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()