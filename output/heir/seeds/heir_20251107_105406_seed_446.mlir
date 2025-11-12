"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_op_mixer"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, index) -> i32
    %5 = "tensor.extract"(%arg0, %1) : (tensor<4xi32>, index) -> i32
    %6 = "tensor.extract"(%arg0, %2) : (tensor<4xi32>, index) -> i32
    %7 = "tensor.extract"(%arg0, %3) : (tensor<4xi32>, index) -> i32
    %8 = "tensor.extract"(%arg1, %0) : (tensor<4xi32>, index) -> i32
    %9 = "tensor.extract"(%arg1, %1) : (tensor<4xi32>, index) -> i32
    %10 = "tensor.extract"(%arg1, %2) : (tensor<4xi32>, index) -> i32
    %11 = "tensor.extract"(%arg1, %3) : (tensor<4xi32>, index) -> i32
    %12 = "arith.addi"(%4, %8) <{overflowFlags = #arith_overflow_flags_overflow}> : (i32, i32) -> i32
    %13 = "arith.subi"(%5, %9) <{overflowFlags = #arith_overflow_flags_overflow}> : (i32, i32) -> i32
    %14 = "arith.muli"(%6, %10) <{overflowFlags = #arith_overflow_flags_overflow}> : (i32, i32) -> i32
    %15 = "arith.addi"(%7, %11) <{overflowFlags = #arith_overflow_flags_overflow}> : (i32, i32) -> i32
    %16 = "scf.for"(%0) <{lowerBound = 0 : index, upperBound = 4 : index, step = 1 : index}> ({
    ^bb1(%iv: index):
      %17 = "arith.addi"(%iv, %iv) <{overflowFlags = #arith_overflow_flags_overflow}> : (index, index) -> index
      %18 = "arith.cmpi"(%17, %16) <{predicate = "slt"}> : (index, index) -> i1
      "scf.yield"(%18) : (i1) -> ()
    }) : (i1) -> ()
    %19 = "tensor.insert"(%12, %arg0, %0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %20 = "tensor.insert"(%13, %19, %1) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %21 = "tensor.insert"(%14, %20, %2) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %22 = "tensor.insert"(%15, %21, %3) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%22) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()