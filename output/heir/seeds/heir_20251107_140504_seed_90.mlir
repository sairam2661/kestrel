"builtin.module"() ({
  "func.func"() <{function_type = (index, tensor<3xi32>) -> tensor<3xi32>, sym_name = "tensor_manipulation"}> ({
  ^bb0(%arg0: index, %arg1: tensor<3xi32>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflow_tags}  > : (index, index) -> index
    %2 = "tensor.extract"(%arg1, %0) : (tensor<3xi32>, index) -> i32
    %3 = "arith.muli"(%2, %2) <{overflowFlags = #arith_overflow_tags}  > : (i32, i32) -> i32
    %4 = "arith.constant"() <{value = dense<[1, 2, 3]> : tensor<3xi32>}> : () -> tensor<3xi32>
    %5 = "tensor.insert"(%3, %4, %0) : (i32, tensor<3xi32>, index) -> tensor<3xi32>
    "func.return"(%5) : (tensor<3xi32>) -> ()
  }) : () -> ()
}) : () -> ()