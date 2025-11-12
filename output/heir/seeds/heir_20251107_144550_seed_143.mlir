"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10xi32>, index) -> tensor<10xi32>, sym_name = "transform_tensor"}> ({
  ^bb0(%arg0: tensor<10xi32>, %arg1: index):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "arith.constant"() <{value = 0 : index}> : () -> index
    %4 = "arith.constant"() <{value = 9 : index}> : () -> index
    %5 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %6 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %7 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %8 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %9 = "comb.truth_table"(%arg1, %2, %3, %4) <{result_type = i32}> : (index, index, index, index) -> i32
    %10 = "arith.muli"(%9, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %11 = "tensor.insert"(%10, %arg0, %1) : (i32, tensor<10xi32>, index) -> tensor<10xi32>
    %12 = "tensor.insert"(%6, %11, %2) : (i32, tensor<10xi32>, index) -> tensor<10xi32>
    %13 = "tensor.insert"(%7, %12, %3) : (i32, tensor<10xi32>, index) -> tensor<10xi32>
    %14 = "tensor.insert"(%8, %13, %4) : (i32, tensor<10xi32>, index) -> tensor<10xi32>
    "func.return"(%14) : (tensor<10xi32>) -> ()
  }) : () -> ()
}) : () -> ()