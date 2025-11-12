"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, i32, !tensor_exttensor) -> !tensor_exttensor, sym_name = "complex_op"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: i32, %arg2: !tensor_exttensor):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.addi"(%arg1, %0) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %2 = "tensor_ext.assign_layout"(%arg2) <{layout = "offset: 0, strides: [2]"}> : (!tensor_exttensor) -> !tensor_exttensor
    %3 = "scf.for"(%arg1, %1, %0) ({
    ^bb1(%iv: i32, %iv_end: i32, %iv_step: i32):
      %4 = "arith.muli"(%iv, %iv_step) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      %5 = "arith.addi"(%arg1, %4) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      "scf.yield"(%5) : (i32) -> ()
    }) : (i32, i32, i32) -> i32
    %6 = "secret.generic"(%arg0, %3) ({
    ^bb2(%arg3: i32, %arg4: i32):
      %7 = "arith.addi"(%arg3, %arg4) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      "secret.yield"(%7) : (i32) -> ()
    }) : (!secretsecret, i32) -> !secretsecret
    "func.return"(%2) : (!tensor_exttensor) -> ()
  }) : () -> ()
}) : () -> ()