"builtin.module"() ({
  "func.func"() <{function_type = (tensor<32x32xi32>) -> tensor<32x32xi32>, sym_name = "complex_rotation"}> ({
  ^bb0(%arg0: tensor<32x32xi32>):
    %1 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %2 = "tensor_ext.rotate"(%arg0, %1) : (tensor<32x32xi32>, i32) -> tensor<32x32xi32>
    %3 = "arith.constant"() <{value = -7 : i32}> : () -> i32
    %4 = "tensor_ext.rotate"(%2, %3) : (tensor<32x32xi32>, i32) -> tensor<32x32xi32>
    %5 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %6 = "tensor_ext.rotate"(%4, %5) : (tensor<32x32xi32>, i32) -> tensor<32x32xi32>
    "func.return"(%6) : (tensor<32x32xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<32x32xi32>) -> tensor<32x32xi32>, sym_name = "nested_rotation"}> ({
  ^bb0(%arg1: tensor<32x32xi32>):
    %0 = "arith.constant"() <{value = 11 : i32}> : () -> i32
    %1 = "tensor_ext.rotate"(%arg1, %0) : (tensor<32x32xi32>, i32) -> tensor<32x32xi32>
    %2 = "scf.for"(%arg1, %1, %0) ({
    ^bb1(%iv: tensor<32x32xi32>, %iv1: tensor<32x32xi32>, %iv2: i32):
      %3 = "arith.addi"(%iv2, %0) : (i32, i32) -> i32
      %4 = "tensor_ext.rotate"(%iv1, %3) : (tensor<32x32xi32>, i32) -> tensor<32x32xi32>
      "scf.yield"(%3, %4) : (i32, tensor<32x32xi32>) -> ()
    }) : () -> tensor<32x32xi32>
    "func.return"(%2) : (tensor<32x32xi32>) -> ()
  }) : () -> ()
}) : () -> ()