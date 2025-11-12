"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, f32) -> f32, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: f32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.cmpi"(%0, %arg0) <{predicate = "eq"}> : (i32, i32) -> i1
    %2 = "scf.if"(%1) ({
      ^bb1(%3: i32):
        %4 = "arith.addf"(%arg2, %arg2) : (f32, f32) -> f32
        "scf.yield"(%4) : (f32) -> ()
    }, {
      ^bb2(%5: i32):
        %6 = "arith.cmpf"(%arg2, %arg2) <{predicate = "ne"}> : (f32, f32) -> i1
        %7 = "scf.if"(%6) ({
          %8 = "arith.mulf"(%arg2, %arg2) : (f32, f32) -> f32
          "scf.yield"(%8) : (f32) -> ()
        }, {
          %9 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
          "scf.yield"(%9) : (f32) -> ()
        }) : (i1) -> f32
        "scf.yield"(%7) : (f32) -> ()
    }) : (i1) -> f32
    "func.return"(%2) : (f32) -> ()
  }) : () -> ()
}) : () -> ()