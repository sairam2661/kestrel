"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32, f32), sym_name = "mixed_types"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.constant"() <{value = 2.5 : f32}> : () -> f32
    %2 = "arith.muli"(%arg0, %arg1) : (i32, i32) -> i32
    %3 = "arith.addf"(%1, %1) : (f32, f32) -> f32
    %4 = "arith.cmpi"(%0, %2, "slt") : (i32, i32) -> i1
    %5 = "scf.if"(%4) ({
      %6 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      "scf.yield"(%6) : (i32) -> ()
    }, {
      %7 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      "scf.yield"(%7) : (i32) -> ()
    }) : (i1) -> i32
    "func.return"(%5, %3) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()