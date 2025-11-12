"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "complex_tensor_manipulation"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %4 = "tensor.extract"(%arg0, %0, %1) : (tensor<2x2xi32>, index, index) -> i32
    %5 = "tensor.extract"(%arg1, %0, %1) : (tensor<2x2xi32>, index, index) -> i32
    %6 = "arith.addi"(%4, %5) : (i32, i32) -> i32
    %7 = "tensor.insert"(%6, %arg0, %0, %1) : (i32, tensor<2x2xi32>, index, index) -> tensor<2x2xi32>
    %8 = "arith.cmpi"(%4, %5, "ne") : (i32, i32, i1) -> i1
    %9 = "arith.select"(%8, %6, %3) : (i1, i32, i32) -> i32
    %10 = "tensor.insert"(%9, %arg0, %0, %2) : (i32, tensor<2x2xi32>, index, index) -> tensor<2x2xi32>
    "func.return"(%10) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()