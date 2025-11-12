"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecrettensor4xi32, i32) -> !secretsecrettensor4xi32, sym_name = "mixed_dialects"}> ({
  ^bb0(%arg0: !secretsecrettensor4xi32, %arg1: i32):
    %0 = "arith.constant"() <{value = dense<1> : tensor<4xi32>}> : () -> tensor<4xi32>
    %1 = "tensor.insert"(%0, %arg0, %arg1) <{indices = [0, 0, 0, 0]}> : (tensor<4xi32>, !secretsecrettensor4xi32, i32) -> !secretsecrettensor4xi32
    %2 = "arith.cmpi"(%arg1, 0) <{predicate = "eq"}> : (i32, i32) -> i1
    %3 = "arith.select"(%2, %1, %arg0) : (i1, !secretsecrettensor4xi32, !secretsecrettensor4xi32) -> !secretsecrettensor4xi32
    "func.return"(%3) : (!secretsecrettensor4xi32) -> ()
  }) : () -> ()
}) : () -> ()