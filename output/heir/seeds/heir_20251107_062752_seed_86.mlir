"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_manipulation"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 2 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 3 : index}> : () -> index
    %3 = "tensor_ext.assign_layout"(%arg0) <{layout = #strided_layout_strides_offset}> : (tensor<4xi32>) -> tensor<4xi32>
    %4 = "tensor_ext.rotate"(%3, %1) : (tensor<4xi32>, index) -> tensor<4xi32>
    %5 = "tensor_ext.rotate"(%arg1, %2) : (tensor<4xi32>, index) -> tensor<4xi32>
    %6 = "tensor_ext.assign_layout"(%5) <{layout = #strided_layout_strides_offset}> : (tensor<4xi32>) -> tensor<4xi32>
    %7 = "arith.addi"(%4, %6) <{overflowFlags = #arith_overflow_none}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %8 = "tensor_ext.rotate"(%7, %0) : (tensor<4xi32>, index) -> tensor<4xi32>
    %9 = "tensor.extract"(%8, %1) : (tensor<4xi32>, index) -> i32
    %10 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %11 = "arith.muli"(%9, %10) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %12 = "arith.select"(%11, %10, %9) <{predicate = 1 : i64}> : (i32, i32, i32) -> i32
    %13 = "arith.constant"() <{value = 5 : index}> : () -> index
    %14 = "tensor.insert"(%12, %8, %13) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%14) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()