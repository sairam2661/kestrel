"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<4x5x6xf32>) -> (i32, tensor<4x5x6xf32>), sym_name = "complex_interaction_example"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<4x5x6xf32>):
    %0 = "arith.cmpi"(%arg0, %arg0, "eq") : (i32, i32) -> i1
    %1 = "scf.if"(%0) ({
      ^bb1:
        %2 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
        "transform.yield"(%2) : (i32) -> i32
    }) : (i1) -> (i32)
    %3 = "arith.addf"(%arg1, %arg1) : (tensor<4x5x6xf32>, tensor<4x5x6xf32>) -> tensor<4x5x6xf32>
    "func.return"(%1, %3) : (i32, tensor<4x5x6xf32>) -> ()
  }) : () -> ()
}) : () -> ()