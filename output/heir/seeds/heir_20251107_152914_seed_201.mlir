"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi64>, tensor<4xi64>) -> tensor<4xi64>, sym_name = "complex_combination"}> ({
  ^bb0(%arg0: tensor<4xi64>, %arg1: tensor<4xi64>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "tensor.extract"(%arg0, %3) : (tensor<4xi64>, index) -> i64
    %5 = "comb.truth_table"(%4) <{inputs = [1, 1], outputs = [1]}> : (i64) -> i64
    %6 = "tensor.insert"(%5, %arg1, %1) : (i64, tensor<4xi64>, index) -> tensor<4xi64>
    %7 = "tensor.extract"(%arg0, %0) : (tensor<4xi64>, index) -> i64
    %8 = "comb.truth_table"(%7) <{inputs = [0, 0], outputs = [0]}> : (i64) -> i64
    %9 = "tensor.insert"(%8, %6, %2) : (i64, tensor<4xi64>, index) -> tensor<4xi64>
    %10 = "tensor.extract"(%arg0, %1) : (tensor<4xi64>, index) -> i64
    %11 = "comb.truth_table"(%10) <{inputs = [1, 0], outputs = [1]}> : (i64) -> i64
    %12 = "tensor.insert"(%11, %9, %3) : (i64, tensor<4xi64>, index) -> tensor<4xi64>
    "func.return"(%12) : (tensor<4xi64>) -> ()
  }) : () -> ()
}) : () -> ()