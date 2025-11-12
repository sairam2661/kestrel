"builtin.module"() ({
  "func.func"() <{function_type = (!secret_SECRETVALUES, !secret_SECRETVALUES) -> i32, sym_name = "complex_secret_compare"}> ({
  ^bb0(%arg0: !secret_SECRETVALUES, %arg1: !secret_SECRETVALUES):
    %0 = "secret.conceal"(%arg0) : (!secret_SECRETVALUES) -> i32
    %1 = "secret.conceal"(%arg1) : (!secret_SECRETVALUES) -> i32
    %2 = "arith.cmpi"(%0, %1, "sgt") : (i32, i32) -> i1
    %3 = "scf.for"() <{lowerBound = 0 : index, upperBound = 10 : index, step = 1 : index}> ({
    ^bb0(%iv: index):
      %4 = "arith.muli"(%iv, %0) <{overflowFlags = #arith_overflownone}> : (index, i32) -> i32
      %5 = "arith.muli"(%iv, %1) <{overflowFlags = #arith_overflownone}> : (index, i32) -> i32
      %6 = "arith.addi"(%4, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %7 = "arith.select"(%2, %6, %iv) : (i1, i32, index) -> i32
      "scf.yield"() : () -> ()
    }) : i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()