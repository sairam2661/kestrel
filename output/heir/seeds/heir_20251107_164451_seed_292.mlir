"builtin.module"() ({
  "func.func"() <{function_type = (!secret, !secret) -> !secret, sym_name = "complex_secret_flow"}> ({
  ^bb0(%arg0: !secret, %arg1: !secret):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: i32, %arg3: i32):
      %4 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %5 = "arith.muli"(%4, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %6 = "arith.cmpi"("slt", %4, %5) : (i32, i32) -> i1
      %7 = "arith.select"(%6, %4, %5) : (i1, i32, i32) -> i32
      "secret.yield"(%7) : (i32) -> ()
    }) : (!secret, !secret) -> !secret
    %8 = "secret.conceal"(%3) : (i32) -> !secret
    %9 = "scf.for"(%0, %2, %1) ({
    ^bb0(%iv: index):
      %10 = "arith.addi"(%iv, %1) <{overflowFlags = #arith_overflownone}> : (index, index) -> index
      %11 = "secret.generic"(%8) ({
      ^bb0(%arg4: i32):
        %12 = "arith.addi"(%arg4, %iv) <{overflowFlags = #arith_overflownone}> : (i32, index) -> i32
        "secret.yield"(%12) : (i32) -> ()
      }) : (!secret) -> !secret
      "scf.yield"() : () -> ()
    }) : (index) -> ()
    "func.return"(%9) : (!secret) -> ()
  }) : () -> ()
}) : () -> ()