"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {secret.secret}], function_type = (i32, i32) -> i32, sym_name = "complex_op"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "arith.muli"(%1, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "secret.generic"(%2) ({
    ^bb1(%arg2: i32):
      %4 = "arith.subi"(%arg2, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "secret.yield"(%4) : (i32) -> ()
    }) : (!secretsecret) -> (i32)
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()