"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5xi64>, tensor<5xi64>) -> tensor<5xi64>, sym_name = "tensor_mutation_complex"}> ({
  ^bb0(%arg0: tensor<5xi64>, %arg1: tensor<5xi64>):
    %c1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %c2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %c3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %c4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %c5 = "arith.constant"() <{value = 5 : index}> : () -> index
    %c6 = "arith.constant"() <{value = 6 : index}> : () -> index
    %c7 = "arith.constant"() <{value = 7 : index}> : () -> index
    %c8 = "arith.constant"() <{value = 8 : index}> : () -> index
    %c9 = "arith.constant"() <{value = 9 : index}> : () -> index
    %c10 = "arith.constant"() <{value = 10 : index}> : () -> index
    %0 = "tensor.extract"(%arg0, %c1) : (tensor<5xi64>, index) -> i64
    %1 = "arith.addi"(%0, %c6) : (i64, i64) -> i64
    %2 = "tensor.insert"(%1, %arg1, %c2) : (i64, tensor<5xi64>, index) -> tensor<5xi64>
    %3 = "tensor.extract"(%arg0, %c3) : (tensor<5xi64>, index) -> i64
    %4 = "arith.subi"(%3, %c7) : (i64, i64) -> i64
    %5 = "tensor.insert"(%4, %2, %c4) : (i64, tensor<5xi64>, index) -> tensor<5xi64>
    %6 = "tensor.extract"(%arg0, %c5) : (tensor<5xi64>, index) -> i64
    %7 = "arith.muli"(%6, %c8) : (i64, i64) -> i64
    %8 = "tensor.insert"(%7, %5, %c9) : (i64, tensor<5xi64>, index) -> tensor<5xi64>
    %9 = "tensor.extract"(%arg0, %c10) : (tensor<5xi64>, index) -> i64
    %10 = "arith.addi"(%9, %c5) : (i64, i64) -> i64
    %11 = "tensor.insert"(%10, %8, %c1) : (i64, tensor<5xi64>, index) -> tensor<5xi64>
    "func.return"(%11) : (tensor<5xi64>) -> ()
  }) : () -> ()
}) : () -> ()