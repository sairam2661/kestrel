"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<tensor<16xi32>>, !secret.secret<index>, !secret.secret<index>) -> !secret.secret<i32>, sym_name = "main"}> ({
  ^bb0(%arg0: !secret.secret<tensor<16xi32>>, %arg1: !secret.secret<index>, %arg2: !secret.secret<index>):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "secret.generic"(%arg0, %arg1, %arg2) ({
    ^bb0(%arg3: tensor<16xi32>, %arg4: index, %arg5: index):
      %3 = "scf.for"(%arg4, %arg5, %1, %0) ({
      ^bb0(%arg6: index, %arg7: i32):
        %4 = "tensor.extract"(%arg3, %arg6) : (tensor<16xi32>, index) -> i32
        %5 = "arith.addi"(%4, %arg7) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
        "scf.yield"(%5) : (i32) -> ()
      }) {lower = 0 : i64, upper = 16 : i64} : (index, index, index, i32) -> i32
      "secret.yield"(%3) : (i32) -> ()
    }) : (!secret.secret<tensor<16xi32>>, !secret.secret<index>, !secret.secret<index>) -> !secret.secret<i32>
    "func.return"(%2) : (!secret.secret<i32>) -> ()
  }) : () -> ()
}) : () -> ()

