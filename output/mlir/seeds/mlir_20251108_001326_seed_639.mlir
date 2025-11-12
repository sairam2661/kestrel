"builtin.module"() ({
  "func.func"() <{function_type = (i8, i32) -> (i8, i32), sym_name = "complex_function"}> ({
  ^bb0(%arg0: i8, %arg1: i32):
    %0 = "arith.constant"() <{value = 255 : i8}> : () -> i8
    %1 = "arith.addi"(%arg0, %0) : (i8, i8) -> i8
    %2 = "arith.constant"() <{value = 1000 : i32}> : () -> i32
    %3 = "arith.addi"(%arg1, %2) : (i32, i32) -> i32
    "scf.if"(%arg0) ({
    ^bb1(%arg2: i8):
      %4 = "arith.subi"(%arg2, %0) : (i8, i8) -> i8
      "scf.yield"(%4) : (i8) -> (i8)
    }) {
    } : (i8) -> (i8)
    "scf.for"(%arg1, %arg1, %2) ({
    ^bb2(%arg3: i32):
      %5 = "arith.muli"(%arg3, %3) : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }) : (i32, i32, i32) -> ()
    "func.return"(%1, %3) : (i8, i32) -> ()
  }) : () -> ()
}) : () -> ()