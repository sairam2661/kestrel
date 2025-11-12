"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "tensor_xor_sum"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %5 = "arith.constant"() <{value = 5 : index}> : () -> index
    %6 = "arith.constant"() <{value = 6 : index}> : () -> index
    %7 = "arith.constant"() <{value = 7 : index}> : () -> index
    %8 = "scf.for"(%0, %7, %1) ({
    ^bb0(%iv: index, %arg2: tensor<8xi32>, %arg3: tensor<8xi32>):
      %9 = "tensor.extract"(%arg0, %iv) : (tensor<8xi32>, index) -> i32
      %10 = "tensor.extract"(%arg1, %iv) : (tensor<8xi32>, index) -> i32
      %11 = "arith.xori"(%9, %10) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %12 = "tensor.insert"(%11, %arg2, %iv) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
      %13 = "tensor.insert"(%9, %arg3, %iv) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
      "scf.yield"(%12, %13) : (tensor<8xi32>, tensor<8xi32>) -> ()
    }) {valueRanges = #scf_value_ranges} : (index, tensor<8xi32>, tensor<8xi32>) -> (tensor<8xi32>, tensor<8xi32>)
    %14 = "scf.for"(%0, %7, %1) ({
    ^bb0(%iv: index, %arg4: tensor<8xi32>, %arg5: tensor<8xi32>):
      %15 = "tensor.extract"(%arg4, %iv) : (tensor<8xi32>, index) -> i32
      %16 = "tensor.extract"(%arg5, %iv) : (tensor<8xi32>, index) -> i32
      %17 = "arith.addi"(%15, %16) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %18 = "tensor.insert"(%17, %arg4, %iv) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
      "scf.yield"(%18, %arg5) : (tensor<8xi32>, tensor<8xi32>) -> ()
    }) {valueRanges = #scf_value_ranges} : (index, tensor<8xi32>, tensor<8xi32>) -> (tensor<8xi32>, tensor<8xi32>)
    "func.return"(%14) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()