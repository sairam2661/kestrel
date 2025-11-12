"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>, sym_name = "tensor_operations"}> ({
  ^bb0(%arg0: tensor<10xi32>, %arg1: tensor<10xi32>):
    %0 = "arith.constant"() <{value = 2 : index}> : () -> index
    %1 = "tensor.extract_element"(%arg0, %0) : (tensor<10xi32>, index) -> i32
    %2 = "arith.addi"(%1, %1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %3 = "tensor.insert_element"(%arg1, %2, %0) : (tensor<10xi32>, i32, index) -> tensor<10xi32>
    %4 = "arith.constant"() <{value = 5 : index}> : () -> index
    %5 = "tensor.extract_element"(%arg1, %4) : (tensor<10xi32>, index) -> i32
    %6 = "arith.muli"(%5, %5) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %7 = "tensor.insert_element"(%3, %6, %4) : (tensor<10xi32>, i32, index) -> tensor<10xi32>
    "func.return"(%7) : (tensor<10xi32>) -> ()
  }) : () -> ()
}) : () -> ()