"builtin.module"() ({
  "func.func"() <{function_type = () -> (i32, f32), sym_name = "cross_dialect_interaction"}> ({
  ^bb0:
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %2 = "scf.for"() ({
      ^bb1(%iv: i32):
        %3 = "arith.addi"(%iv, %0) : (i32, i32) -> i32
        %4 = "arith.addf"(%1, %1) : (f32, f32) -> f32
        "scf.yield"(%3, %4) : (i32, f32) -> ()
    }) : () -> (i32, f32)
    %5 = "scf.if"(%0) ({
      %6 = "arith.cmpi"(%0, %0, "eq") : (i32, i32) -> i1
      "scf.yield"(%6) : (i1) -> ()
    }, {
      %7 = "arith.cmpf"(%1, %1, "eq") : (f32, f32) -> i1
      "scf.yield"(%7) : (i1) -> ()
    }) : (i32) -> i1
    "func.return"(%2, %5) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()