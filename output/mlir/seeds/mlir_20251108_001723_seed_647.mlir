"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x?xi32>, tensor<5x?xi32>) -> tensor<10x?xi32>, sym_name = "concat_and_arith"}> ({
    ^bb0(%arg0: tensor<5x?xi32>, %arg1: tensor<5x?xi32>):
      %0 = "arith.addi"(%arg0, %arg1) : (tensor<5x?xi32>, tensor<5x?xi32>) -> tensor<5x?xi32>
      %1 = "arith.cmpi"(%0, %arg0, "eq") : (tensor<5x?xi32>, tensor<5x?xi32>, i32) -> tensor<5xi1>
      %2 = "tosa.concat"(%0, %arg1) <{axis = 0 : i32}> : (tensor<5x?xi32>, tensor<5x?xi32>) -> tensor<10x?xi32>
      "func.return"(%2) : (tensor<10x?xi32>) -> ()
  }) : () -> ()
}) : () -> ()