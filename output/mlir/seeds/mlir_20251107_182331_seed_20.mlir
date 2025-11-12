"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64, f32) -> (i32, f64, i1), sym_name = "test_mixed_ops"}> ({
  ^bb0(%arg0: i32, %arg1: i64, %arg2: f32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.cmpi"(%arg0, %0, "eq") : (i32, i32) -> i1
    %2 = "arith.constant"() <{value = 1.000000e+00 : f64}> : () -> f64
    %3 = "arith.cmpf"(%arg2, %2, "oeq") : (f32, f64) -> i1
    %4 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    "scf.if"(%1) ({
      ^bb1(%arg3: i1):
        %5 = "arith.cmpi"(%4, %0, "sgt") : (i32, i32) -> i1
        "scf.yield"(%5) : (i1) -> i1
    }) {
      "scf.yield" = (i1) -> i1
    } : (i1) -> (i1) attrs
    .attrs
    "scf.if"  : (i1) -> (i1)
    "func.return"(%4, %2, %3) : (i32, f64, i1) -> ()
  }) : () -> ()
}) : () -> ()