"builtin.module"() ({
  "func.func"() <{function_type = (index, i32) -> (i32, i32), sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: index, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg0) : (index, index) -> index
    %1 = "arith.extui"(%arg1) : (i32) -> index
    %2 = "arith.addi"(%0, %1) : (index, index) -> index
    %3 = "arith.muli"(%2, %2) : (index, index) -> index
    %4 = "arith.extui"(%arg1) : (i32) -> index
    %5 = "arith.subi"(%3, %4) : (index, index) -> index
    %6 = "arith.trunci"(%5) : (index) -> i32
    %7 = "arith.addi"(%6, %arg1) : (i32, i32) -> i32
    "scf.if"(%arg1) <{sym_name = "check_arg1"}> ({
      ^bb1(%arg2: i1):
      "scf.yield"(%7) : (i32) -> i32
    }) : (i32) -> (i32)
    "func.return"(%7, %7) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()