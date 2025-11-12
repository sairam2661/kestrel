"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_arithmetic_ops"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %3 = "arith.addf"(%arg1, %1) : (f32, f32) -> f32
    %4 = "arith.cmpi"(%arg0, %0) <{predicate = "eq"}> : (i32, i32) -> i1
    %5 = "arith.cmpf"(%arg1, %1) <{predicate = "eq"}> : (f32, f32) -> i1
    %6:2 = "scf.if"(%4) ({
      "scf.yield"(%2, %3) : (i32, f32) -> ()
    }, {
      "scf.yield"(%arg0, %arg1) : (i32, f32) -> ()
    }) : (i1) -> (i32, f32)
    "func.return"(%6#0, %6#1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()