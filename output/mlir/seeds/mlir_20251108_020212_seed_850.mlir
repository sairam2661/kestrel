"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "complex_arith_mix"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_f32 = "arith.constant"() <{value = 2.000000e+00 : f32}> : () -> f32
    %0 = "arith.addi"(%arg0, %c1_i32) : (i32, i32) -> i32
    %1 = "arith.addf"(%arg1, %c2_f32) : (f32, f32) -> f32
    "scf.if"(%c1_i32) ({
      %2 = "arith.cmpi"(%0, %c1_i32) <{predicate = 6 : i64}> : (i32, i32) -> i1
      "scf.yield"(%2) : (i1) -> ()
    }, {
      "scf.yield"() : () -> ()
    }) : (i32) -> ()
    "scf.for"(%c1_i32, %c1_i32, %c1_i32) ({
      ^bb1(%iv: i32):
        %3 = "arith.cmpi"(%iv, %c1_i32) <{predicate = 6 : i64}> : (i32, i32) -> i1
        "scf.if"(%3) ({
          %4 = "arith.addi"(%iv, %c1_i32) : (i32, i32) -> i32
          "scf.yield"(%4) : (i32) -> ()
        }, {
          "scf.yield"() : () -> ()
        }) : (i32) -> ()
    }) : (i32) -> ()
    "func.return"(%0, %1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()