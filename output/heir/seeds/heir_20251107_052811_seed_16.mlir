"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "matrix_op_example"}> ({
  ^bb0(%arg0: tensor<2x2xi32>):
    %0 = "tensor.extract"(%arg0, %c0, %c0) : (tensor<2x2xi32>, index, index) -> i32
    %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
    %3 = "tensor.extract"(%arg0, %c1, %c1) : (tensor<2x2xi32>, index, index) -> i32
    %4 = "arith.constant"() <{value = 20 : i32}> : () -> i32
    %5 = "arith.muli"(%3, %4) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
    %6 = "scf.for"(%c0, %c2, %c1) ({
      ^bb1(%arg1: index, %arg2: tensor<2x2xi32>):
        %7 = "tensor.extract"(%arg2, %arg1, %c1) : (tensor<2x2xi32>, index, index) -> i32
        %8 = "arith.constant"() <{value = 30 : i32}> : () -> i32
        %9 = "arith.addi"(%7, %8) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
        %10 = "tensor.insert"(%9, %arg2, %arg1, %c1) : (i32, tensor<2x2xi32>, index, index) -> tensor<2x2xi32>
        "scf.yield"(%10) : (tensor<2x2xi32>) -> ()
    }) : (tensor<2x2xi32>) -> tensor<2x2xi32>
    %11 = "tensor.insert"(%2, %arg0, %c0, %c0) : (i32, tensor<2x2xi32>, index, index) -> tensor<2x2xi32>
    %12 = "tensor.insert"(%5, %11, %c1, %c1) : (i32, tensor<2x2xi32>, index, index) -> tensor<2x2xi32>
    "func.return"(%12) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()