"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi64>) -> tensor<4xi64>, sym_name = "mixed_operations"}> ({
  ^bb0(%arg0: tensor<4xi64>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.constant"() <{value = 3 : index}> : () -> index
    %3 = "arith.constant"() <{value = 4 : index}> : () -> index
    %4 = "tensor.extract"(%arg0, %0) : (tensor<4xi64>, index) -> i64
    %5 = "tensor.extract"(%arg0, %1) : (tensor<4xi64>, index) -> i64
    %6 = "tensor.extract"(%arg0, %2) : (tensor<4xi64>, index) -> i64
    %7 = "tensor.extract"(%arg0, %3) : (tensor<4xi64>, index) -> i64
    %8 = "arith.addi"(%4, %5) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64
    %9 = "arith.subi"(%6, %7) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64
    %10 = "arith.muli"(%8, %9) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64
    %11 = "tensor.insert"(%10, %arg0, %0) : (i64, tensor<4xi64>, index) -> tensor<4xi64>
    %12 = "tensor.insert"(%9, %arg0, %1) : (i64, tensor<4xi64>, index) -> tensor<4xi64>
    %13 = "tensor_ext.rotate"(%12, %2) : (tensor<4xi64>, index) -> tensor<4xi64>
    "func.return"(%13) : (tensor<4xi64>) -> ()
  }) : () -> ()
}) : () -> ()