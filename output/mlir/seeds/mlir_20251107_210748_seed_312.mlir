"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_types"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.constant"() <{value = 2.000000e+00 : f32}> : () -> f32
    %2 = "arith.addf"(%arg1, %1) : (f32, f32) -> f32
    %3 = "arith.cmpi"(%0, %0, "eq") : (i32, i32) -> i1
    %4 = "scf.if"(%3) <{result_types = [i32, f32]}> ({
      ^bb1:
        "scf.yield"(%0, %2) : (i32, f32) -> ()
    }, {
      ^bb2:
        %5 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
        %6 = "arith.addf"(%arg1, %1) : (f32, f32) -> f32
        "scf.yield"(%5, %6) : (i32, f32) -> ()
    }) : (i32, f32)
    %7 = "scf.for"(%arg0) <{lower_bound = 0, upper_bound = 5, step = 1, result_types = [i32, f32]}> ({
      ^bb3(%iv: i32, %acc0: i32, %acc1: f32):
        %8 = "arith.addi"(%acc0, %iv) : (i32, i32) -> i32
        %9 = "arith.addf"(%acc1, %2) : (f32, f32) -> f32
        "scf.yield"(%8, %9) : (i32, f32) -> ()
    }) : (i32, f32)
    "func.return"(%4, %7) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()