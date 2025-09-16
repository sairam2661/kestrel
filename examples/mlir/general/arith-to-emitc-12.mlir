"builtin.module"() ({
  "func.func"() <{function_type = (i1, tensor<8xi32>, tensor<8xi32>) -> (), sym_name = "arith_select"}> ({
  ^bb0(%arg0: i1, %arg1: tensor<8xi32>, %arg2: tensor<8xi32>):
    %0 = "arith.select"(%arg0, %arg1, %arg2) : (i1, tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

