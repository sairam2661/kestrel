"builtin.module"() ({
  "func.func"() <{function_type = (!secretSecret, !tensor_exttensor) -> !secretSecret, sym_name = "unusual_dialect_combination"}> ({
  ^bb0(%arg0: !secretSecret, %arg1: !tensor_exttensor):
    %0 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith_overflownone}> : (!secretSecret, !secretSecret) -> !secretSecret
    %1 = "tensor.extract"(%arg1, %0) : (!tensor_exttensor, !secretSecret) -> i32
    %2 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %3 = "arith.addi"(%1, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "tensor.insert"(%3, %arg1, %0) : (i32, !tensor_exttensor, !secretSecret) -> !tensor_exttensor
    %5 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: !secretSecret, %arg3: !tensor_exttensor):
      %6 = "scf.for"(%arg2, %arg2, %2) ({
      ^bb0(%arg4: !secretSecret, %arg5: i32):
        %7 = "arith.addi"(%arg4, %3) <{overflowFlags = #arith_overflownone}> : (!secretSecret, i32) -> !secretSecret
        "scf.yield"(%7) : (!secretSecret) -> ()
      }) : (!secretSecret, i32) -> !secretSecret
      %8 = "secret.yield"(%6) : (!secretSecret) -> ()
    }) : (!secretSecret, !tensor_exttensor) -> !secretSecret
    "func.return"(%5) : (!secretSecret) -> ()
  }) : () -> ()
}) : () -> ()