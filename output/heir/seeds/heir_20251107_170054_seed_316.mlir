"builtin.module"() ({
  "tfhe_rust.module"() ({
    "func.func"() <{arg_attrs = [{secret.secret}], function_type = (tensor<64xi32>) -> tensor<64xi32>, sym_name = "tfhe_transform"}> ({
      ^bb0(%arg0: tensor<64xi32>):
        %1 = "arith.constant"() <{value = 2 : index}> : () -> index
        %2 = "arith.constant"() <{value = 3 : index}> : () -> index
        %3 = "arith.constant"() <{value = 5 : index}> : () -> index
        %4 = "arith.constant"() <{value = 7 : index}> : () -> index
        %5 = "arith.constant"() <{value = dense<1> : tensor<64xi32>}> : () -> tensor<64xi32>
        %6 = "tensor.insert"(%5, %arg0, %1) : (i32, tensor<64xi32>, index) -> tensor<64xi32>
        %7 = "tensor.insert"(%5, %6, %2) : (i32, tensor<64xi32>, index) -> tensor<64xi32>
        %8 = "tensor.insert"(%5, %7, %3) : (i32, tensor<64xi32>, index) -> tensor<64xi32>
        %9 = "tensor.insert"(%5, %8, %4) : (i32, tensor<64xi32>, index) -> tensor<64xi32>
        "func.return"(%9) : (tensor<64xi32>) -> ()
    }) : () -> ()
  }) : () -> ()
}) : () -> ()