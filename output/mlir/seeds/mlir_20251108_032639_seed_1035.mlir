"builtin.module"() ({
  "func.func"() <{function_type = (i32, i8, index) -> (i32, i8), sym_name = "MixedDialectsTest"}> ({
  ^bb0(%arg0: i32, %arg1: i8, %arg2: index):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.addf"(%arg0, %arg1) : (i32, i8) -> f32
    %2 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %3 = "arith.addi"(%0, %2) : (i32, i32) -> i32
    %4 = "scf.if"(%arg1) ({
    ^bb0(%arg3: i8):
      %5 = "arith.addi"(%arg3, %arg3) : (i8, i8) -> i8
      "scf.yield"(%5) : (i8) -> ()
    }, {
    ^bb0:
      %6 = "arith.constant"() <{value = 0 : i8}> : () -> i8
      "scf.yield"(%6) : (i8) -> ()
    }) : (i8) -> (i8)
    %7 = "scf.for"(%arg2, %arg2, %arg2) ({
    ^bb0(%arg4: index, %arg5: index):
      %8 = "arith.addi"(%arg5, %arg5) : (index, index) -> index
      "scf.yield"(%8) : (index) -> ()
    }) : (index) -> (index)
    "func.return"(%3, %4) : (i32, i8) -> ()
  }) : () -> ()
}) : () -> ()