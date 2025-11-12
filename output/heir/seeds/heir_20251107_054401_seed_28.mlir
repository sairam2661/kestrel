"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}], function_type = (i32, i32, i32, i32, i32) -> i32, sym_name = "complex_control_flow"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32):
    %0 = "arith.cmpi"("slt", %arg0, %arg1) : (i32, i32) -> i1
    "scf.if"(%0) ({
    ^bb0:
      %1 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }) {
    } : () -> ()
    %2 = "arith.cmpi"("slt", %arg1, %arg2) : (i32, i32) -> i1
    "scf.for"(%arg1, %3, %4) <{lowerBound = #arith_constant_i32, upperBound = #arith_constant_i32, step = #arith_constant_i32}> ({
    ^bb0(%iv: i32):
      %5 = "arith.addi"(%iv, %arg3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }) : (i32) -> ()
    "func.return"(%arg4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()