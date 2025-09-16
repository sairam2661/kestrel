"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index) -> (i32, f32), sym_name = "uplift_while"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2.000000e+00 : f32}> : () -> f32
    %2:3 = "scf.while"(%0, %arg0, %1) ({
    ^bb0(%arg6: i32, %arg7: index, %arg8: f32):
      %6 = "arith.cmpi"(%arg7, %arg1) <{predicate = 2 : i64}> : (index, index) -> i1
      "scf.condition"(%6, %arg7, %arg6, %arg8) : (i1, index, i32, f32) -> ()
    }, {
    ^bb0(%arg3: index, %arg4: i32, %arg5: f32):
      %3 = "test.test1"(%arg4) : (i32) -> i32
      %4 = "arith.addi"(%arg3, %arg2) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
      %5 = "test.test2"(%arg5) : (f32) -> f32
      "scf.yield"(%3, %4, %5) : (i32, index, f32) -> ()
    }) : (i32, index, f32) -> (index, i32, f32)
    "func.return"(%2#1, %2#2) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()

