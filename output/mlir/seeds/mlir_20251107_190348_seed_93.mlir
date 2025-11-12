"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "transform_and_scf_example"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 20 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %3 = "arith.subi"(%2, %0) : (i32, i32) -> i32
    %4 = "scf.if"(%3) ({
      %5 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      "scf.yield"(%5) : (i32) -> ()
    }, {
      %6 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      "scf.yield"(%6) : (i32) -> ()
    }) : (i32) -> i32
    %7 = "arith.muli"(%arg0, %arg1) : (i32, i32) -> i32
    %8 = "arith.divsi"(%7, %3) : (i32, i32) -> i32
    "func.return"(%3, %8) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()