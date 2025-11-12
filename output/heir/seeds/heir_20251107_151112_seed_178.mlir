"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (i32) -> (i32), sym_name = "unusual_sequence", sym_visibility = "private"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.cmpi"(%1, %0, "slt") : (i32, i32) -> i1
    %3 = "arith.select"(%2, %1, %0) : (i1, i32, i32) -> i32
    %4 = "arith.subi"(%3, %0) : (i32, i32) -> i32
    %5 = "arith.muli"(%4, %0) : (i32, i32) -> i32
    %6 = "arith.addi"(%5, %arg0) : (i32, i32) -> i32
    "func.return"(%6) : (i32) -> ()
  }) : () -> ()
}) : () -> ()