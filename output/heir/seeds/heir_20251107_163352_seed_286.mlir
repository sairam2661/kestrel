"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> tensor<2x2xi32>, sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = dense<[[1, 2], [3, 4]]> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %1 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    %3 = "arith.constant"() <{value = 1 : index}> : () -> index
    %4 = "tensor.extract"(%0, %2, %3) : (tensor<2x2xi32>, index, index) -> i32
    %5 = "arith.muli"(%4, %1) : (i32, i32) -> i32
    %6 = "tensor.insert"(%5, %0, %2, %3) : (i32, tensor<2x2xi32>, index, index) -> tensor<2x2xi32>
    "func.return"(%6) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()