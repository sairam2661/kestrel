"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "process_tensor"}> ({
  ^bb0(%arg0: tensor<4x4xi32>):
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "tensor.extract"(%arg0, %1) : (tensor<4x4xi32>, index) -> i32
    %3 = "arith.constant"() <{value = 1 : index}> : () -> index
    %4 = "tensor.extract"(%arg0, %3) : (tensor<4x4xi32>, index) -> i32
    %5 = "arith.addi"(%2, %4) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %6 = "arith.constant"() <{value = 2 : index}> : () -> index
    %7 = "tensor.extract"(%arg0, %6) : (tensor<4x4xi32>, index) -> i32
    %8 = "arith.addi"(%5, %7) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %9 = "arith.constant"() <{value = 3 : index}> : () -> index
    %10 = "tensor.extract"(%arg0, %9) : (tensor<4x4xi32>, index) -> i32
    %11 = "arith.addi"(%8, %10) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %12 = "tensor.insert"(%11, %arg0, %1) : (i32, tensor<4x4xi32>, index) -> tensor<4x4xi32>
    %13 = "scf.for"() <{lowerBound = 1 : index, upperBound = 4 : index}> ({
    ^bb1(%iv: index):
      %14 = "tensor.extract"(%12, %iv) : (tensor<4x4xi32>, index) -> i32
      %15 = "arith.addi"(%14, %11) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %16 = "tensor.insert"(%15, %12, %iv) : (i32, tensor<4x4xi32>, index) -> tensor<4x4xi32>
      "scf.yield"() : () -> ()
    }) : (tensor<4x4xi32>) -> tensor<4x4xi32>
    "func.return"(%13) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()