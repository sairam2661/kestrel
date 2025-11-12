"builtin.module"() ({
  "tt.func"() <{function_type = (!ttptr, tensor<32x32xi32>, tensor<32xi32>) -> (tensor<32x32xi32>, tensor<32xi32>), sym_name = "tensor_add_reduce"}> ({
  ^bb0(%arg0: !ttptr, %arg1: tensor<32x32xi32>, %arg2: tensor<32xi32>):
    %0 = "arith.addi"(%arg1, %arg2) : (tensor<32x32xi32>, tensor<32xi32>) -> tensor<32x32xi32>
    %1 = "tt.reduce"(%0, %arg0) <{operation = "sum"}> : (tensor<32x32xi32>, !ttptr) -> tensor<32xi32>
    "tt.return"(%0, %1) : (tensor<32x32xi32>, tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()