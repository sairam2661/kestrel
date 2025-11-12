"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, index, index) -> i32, sym_name = "extract_and_add"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: index, %arg2: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %5 = "arith.constant"() <{value = 5 : index}> : () -> index
    %6 = "arith.constant"() <{value = 6 : index}> : () -> index
    %7 = "arith.constant"() <{value = 7 : index}> : () -> index
    %8 = "tensor.extract"(%arg0, %arg1) : (tensor<4xi32>, index) -> i32
    %9 = "tensor.extract"(%arg0, %arg2) : (tensor<4xi32>, index) -> i32
    %10 = "arith.addi"(%8, %9) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "func.return"(%10) : (i32) -> ()
  }) : () -> ()
}) : () -> ()