"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3xi8>, tensor<2xi32>) -> tensor<2xi8>, sym_name = "test_complex_types"}> ({
  ^bb0(%arg0: tensor<3xi8>, %arg1: tensor<2xi32>):
    %0 = "llvm.mlir.constant"() <{value = 42 : i8}> : () -> i8
    %1 = "llvm.mlir.constant"() <{value = 100 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 255 : i8}> : () -> i8
    %3 = "arith.constant"() <{value = 128 : i32}> : () -> i32
    %4 = "arith.addi"(%arg0, %2) : (tensor<3xi8>, i8) -> tensor<3xi8>
    %5 = "arith.muli"(%arg1, %3) : (tensor<2xi32>, i32) -> tensor<2xi32>
    "llvm.return"(%4, %5) : (tensor<3xi8>, tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()