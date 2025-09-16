"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x1xi32>) -> (tensor<10x1xi32>, tensor<10x1xi32>), sym_name = "reverse_length_one"}> ({
  ^bb0(%arg0: tensor<10x1xi32>):
    %0 = "tosa.reverse"(%arg0) <{axis = 0 : i32}> : (tensor<10x1xi32>) -> tensor<10x1xi32>
    %1 = "tosa.reverse"(%arg0) <{axis = 1 : i32}> : (tensor<10x1xi32>) -> tensor<10x1xi32>
    "func.return"(%0, %1) : (tensor<10x1xi32>, tensor<10x1xi32>) -> ()
  }) : () -> ()
}) : () -> ()

