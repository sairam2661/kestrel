"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (i32) -> i32, sym_name = "complex_mix"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "scf.for"(%1) <{upperBound = 5 : i32}> ({
    ^bb1(%iv: i32):
      %3 = "arith.muli"(%iv, %iv) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %4 = "arith.addi"(%1, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%4) : (i32) -> ()
    }) : (i32) -> i32
    %5 = "tensor_ext.rotate"(%2) <{dimensions = [0], shifts = [2]}> : (i32) -> i32
    "func.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()