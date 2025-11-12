"builtin.module"() ({
  "func.func"() <{function_type = (!secret
  , tensor<10xi32>, !secret, !secret) -> !secret, sym_name = "complex_control_flow_with_secret"}> ({
  ^bb0(%arg0: !secret, %arg1: tensor<10xi32>, %arg2: !secret, %arg3: !secret):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %4 = "secret.generic"(%arg0, %arg1, %arg2, %arg3) ({
    ^bb0(%arg4: i32, %arg5: tensor<10xi32>, %arg6: i32, %arg7: i32):
      %5:2 = "scf.for"(%0, %arg5, %1, %2, %2) ({
      ^bb0(%arg8: index, %arg9: tensor<10xi32>, %arg10: i32):
        %11 = "tensor.extract"(%arg9, %arg8) : (tensor<10xi32>, index) -> i32
        %12 = "arith.addi"(%11, %arg10) <{overflowFlags = #arith
        , overflowType = i32}> : (i32, i32) -> i32
        "scf.yield"(%12) : (i32) -> ()
      }) {lower = 0 : i64, upper = 10 : i64} : (index, tensor<10xi32>, i32) -> i32
      %13 = "arith.cmpi"(%arg4, %3) <{predicate = 4 : i64}> : (i32, i32) -> i1
      %14:2 = "scf.if"(%13) ({
        %15 = "arith.addi"(%5, %arg6) <{overflowFlags = #arith
        , overflowType = i32}> : (i32, i32) -> i32
        "scf.yield"(%15, %arg7) : (i32, i32) -> ()
      }, {
        %16 = "arith.addi"(%arg7, %arg6) <{overflowFlags = #arith
        , overflowType = i32}> : (i32, i32) -> i32
        "scf.yield"(%arg4, %16) : (i32, i32) -> ()
      }) : (i1) -> (i32, i32)
      "secret.yield"(%14#0, %14#1) : (i32, i32) -> ()
    }) : (!secret, tensor<10xi32>, !secret, !secret) -> !secret
    "func.return"(%4) : (!secret) -> ()
  }) : () -> ()
}) : () -> ()