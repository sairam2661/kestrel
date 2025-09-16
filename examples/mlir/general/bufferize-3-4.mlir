"builtin.module"() ({
  "func.func"() <{function_type = (i64, i64, tensor<f32>) -> (i64, tensor<f32>), sym_name = "bufferize_while"}> ({
  ^bb0(%arg0: i64, %arg1: i64, %arg2: tensor<f32>):
    %0 = "arith.constant"() <{value = 2 : i64}> : () -> i64
    %1:3 = "scf.while"(%arg0, %arg2) ({
    ^bb0(%arg6: i64, %arg7: tensor<f32>):
      %3 = "arith.cmpi"(%arg6, %arg1) <{predicate = 2 : i64}> : (i64, i64) -> i1
      "scf.condition"(%3, %arg6, %arg6, %arg7) : (i1, i64, i64, tensor<f32>) -> ()
    }, {
    ^bb0(%arg3: i64, %arg4: i64, %arg5: tensor<f32>):
      %2 = "arith.muli"(%arg4, %0) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
      "scf.yield"(%2, %arg5) : (i64, tensor<f32>) -> ()
    }) : (i64, tensor<f32>) -> (i64, i64, tensor<f32>)
    "func.return"(%1#1, %1#2) : (i64, tensor<f32>) -> ()
  }) : () -> ()
}) : () -> ()

