"builtin.module"() ({
  "func.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>, sym_name = "tensor_mutation"}> ({
  ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>):
    %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %1 = tensor.extract_slice %arg0, %0, %0, %0 : tensor<32xi32>, tensor<1xi32>, tensor<1xi32>, tensor<1xi32> -> tensor<1xi32>
    %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %3 = tensor.insert_slice %1, %2, %0, %0, %0 : tensor<1xi32>, tensor<1xi32>, tensor<1xi32>, tensor<1xi32> -> tensor<32xi32>
    %4 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %5 = "arith.muli"(%arg1, %4) <{overflowFlags = #arith_overflowSigned}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %6 = "arith.addi"(%3, %5) <{overflowFlags = #arith_overflowSigned}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    "func.return"(%6) : (tensor<32xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<32xi32>) -> tensor<32xi32>, sym_name = "identity"}> ({
  ^bb0(%arg0: tensor<32xi32>):
    "func.return"(%arg0) : (tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()