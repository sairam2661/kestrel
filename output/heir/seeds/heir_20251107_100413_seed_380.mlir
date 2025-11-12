"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi64>, tensor<8xi64>) -> tensor<8xi64>, sym_name = "tensor_sum"}> ({
  ^bb0(%arg0: tensor<8xi64>, %arg1: tensor<8xi64>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %5 = "arith.constant"() <{value = 5 : index}> : () -> index
    %6 = "arith.constant"() <{value = 6 : index}> : () -> index
    %7 = "arith.constant"() <{value = 7 : index}> : () -> index
    %8 = "tensor.extract"(%arg0, %0) : (tensor<8xi64>, index) -> i64
    %9 = "tensor.extract"(%arg0, %1) : (tensor<8xi64>, index) -> i64
    %10 = "tensor.extract"(%arg0, %2) : (tensor<8xi64>, index) -> i64
    %11 = "tensor.extract"(%arg0, %3) : (tensor<8xi64>, index) -> i64
    %12 = "tensor.extract"(%arg0, %4) : (tensor<8xi64>, index) -> i64
    %13 = "tensor.extract"(%arg0, %5) : (tensor<8xi64>, index) -> i64
    %14 = "tensor.extract"(%arg0, %6) : (tensor<8xi64>, index) -> i64
    %15 = "tensor.extract"(%arg0, %7) : (tensor<8xi64>, index) -> i64
    %16 = "tensor.extract"(%arg1, %0) : (tensor<8xi64>, index) -> i64
    %17 = "tensor.extract"(%arg1, %1) : (tensor<8xi64>, index) -> i64
    %18 = "tensor.extract"(%arg1, %2) : (tensor<8xi64>, index) -> i64
    %19 = "tensor.extract"(%arg1, %3) : (tensor<8xi64>, index) -> i64
    %20 = "tensor.extract"(%arg1, %4) : (tensor<8xi64>, index) -> i64
    %21 = "tensor.extract"(%arg1, %5) : (tensor<8xi64>, index) -> i64
    %22 = "tensor.extract"(%arg1, %6) : (tensor<8xi64>, index) -> i64
    %23 = "tensor.extract"(%arg1, %7) : (tensor<8xi64>, index) -> i64
    %24 = "arith.addi"(%8, %16) <{overflowFlags = #arith_overflow_mode} > : (i64, i64) -> i64
    %25 = "arith.addi"(%9, %17) <{overflowFlags = #arith_overflow_mode} > : (i64, i64) -> i64
    %26 = "arith.addi"(%10, %18) <{overflowFlags = #arith_overflow_mode} > : (i64, i64) -> i64
    %27 = "arith.addi"(%11, %19) <{overflowFlags = #arith_overflow_mode} > : (i64, i64) -> i64
    %28 = "arith.addi"(%12, %20) <{overflowFlags = #arith_overflow_mode} > : (i64, i64) -> i64
    %29 = "arith.addi"(%13, %21) <{overflowFlags = #arith_overflow_mode} > : (i64, i64) -> i64
    %30 = "arith.addi"(%14, %22) <{overflowFlags = #arith_overflow_mode} > : (i64, i64) -> i64
    %31 = "arith.addi"(%15, %23) <{overflowFlags = #arith_overflow_mode} > : (i64, i64) -> i64
    %32 = "tensor.insert"(%24, %arg0, %0) : (i64, tensor<8xi64>, index) -> tensor<8xi64>
    %33 = "tensor.insert"(%25, %32, %1) : (i64, tensor<8xi64>, index) -> tensor<8xi64>
    %34 = "tensor.insert"(%26, %33, %2) : (i64, tensor<8xi64>, index) -> tensor<8xi64>
    %35 = "tensor.insert"(%27, %34, %3) : (i64, tensor<8xi64>, index) -> tensor<8xi64>
    %36 = "tensor.insert"(%28, %35, %4) : (i64, tensor<8xi64>, index) -> tensor<8xi64>
    %37 = "tensor.insert"(%29, %36, %5) : (i64, tensor<8xi64>, index) -> tensor<8xi64>
    %38 = "tensor.insert"(%30, %37, %6) : (i64, tensor<8xi64>, index) -> tensor<8xi64>
    %39 = "tensor.insert"(%31, %38, %7) : (i64, tensor<8xi64>, index) -> tensor<8xi64>
    "func.return"(%39) : (tensor<8xi64>) -> ()
  }) : () -> ()
}) : () -> ()


#arith_overflow_mode = #arith_overflow_mode "none"  (i64, i64)  ({"none"  (i64, i64)  ({"none"  (i64, i64)  ({"none"  (i64, i64)  ({"none"  (i64, i64)  ({"none"  (i64, i64)  ({"none"  (i64, i64)  ({"none"  (i64, i64)  ({"none"  (i64, i64)  ({"none"  (i64, i64)  ({"none"  (i64, i64)  ({"none"  (i64, i64)  ({"none"  (i64, i64)  ({"none"  (i64, i64)  ({"none"  (i64, i64)  ({"none"  (i64, i64)  ({"none"  (i64, i64)  ({"none"  (i64, i64)  ({"none"  (i64, i64)  ({"none"  (i64, i64)  ({"none"  (i64, i64)  ({"none"  (i64, i64)  ({"none"  (i64, i64)  ({"none"  (i64, i64)  ({"none"  (i64, i64)  ({"none"  (i64, i64)  ({"none"  (i64, i64)  ({"none"  (i64, i64)  ({"none"  (i64, i64)  ({"none"  (i64, i64)  ({"none"  (i64, i64)  ({"none"  (i64, i64)  ({"none"  (i64, i64)  ({"none"  (i64, i64)  ({"none"  (i64, i64)  ({"none"  (i64, i64)  ({"none"