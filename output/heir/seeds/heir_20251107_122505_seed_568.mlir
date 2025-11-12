"builtin.module"() ({
  "func.func"() <{function_type = (tensor<32xi32>) -> tensor<32xi32>, sym_name = "complex_tensor_rotation_and_sum"}> ({
  ^bb0(%arg0: tensor<32xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %5 = "arith.constant"() <{value = 5 : index}> : () -> index
    %6 = "arith.constant"() <{value = 6 : index}> : () -> index
    %7 = "arith.constant"() <{value = 7 : index}> : () -> index
    %8 = "arith.constant"() <{value = 8 : index}> : () -> index
    %9 = "tensor.extract"(%arg0, %0) : (tensor<32xi32>, index) -> i32
    %10 = "tensor_ext.rotate"(%arg0, %1) : (tensor<32xi32>, index) -> tensor<32xi32>
    %11 = "tensor_ext.rotate"(%arg0, %2) : (tensor<32xi32>, index) -> tensor<32xi32>
    %12 = "arith.addi"(%10, %11) <{overflowFlags = #arith_overflowFlags}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %13 = "tensor.extract"(%12, %0) : (tensor<32xi32>, index) -> i32
    %14 = "tensor.extract"(%arg0, %3) : (tensor<32xi32>, index) -> i32
    %15 = "tensor.extract"(%arg0, %4) : (tensor<32xi32>, index) -> i32
    %16 = "tensor.extract"(%arg0, %5) : (tensor<32xi32>, index) -> i32
    %17 = "tensor.extract"(%arg0, %6) : (tensor<32xi32>, index) -> i32
    %18 = "tensor.extract"(%arg0, %7) : (tensor<32xi32>, index) -> i32
    %19 = "tensor.extract"(%arg0, %8) : (tensor<32xi32>, index) -> i32
    %20 = "arith.addi"(%9, %13) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
    %21 = "arith.addi"(%20, %14) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
    %22 = "arith.addi"(%21, %15) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
    %23 = "arith.addi"(%22, %16) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
    %24 = "arith.addi"(%23, %17) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
    %25 = "arith.addi"(%24, %18) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
    %26 = "arith.addi"(%25, %19) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
    "func.return"(%26) : (i32) -> ()
  }) : () -> ()
  
  "func.func"() <{function_type = (tensor<32xi32>) -> tensor<32xi32>, sym_name = "nested_complex_tensor_rotation_and_sum"}> ({
  ^bb0(%arg0: tensor<32xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %5 = "arith.constant"() <{value = 5 : index}> : () -> index
    %6 = "arith.constant"() <{value = 6 : index}> : () -> index
    %7 = "arith.constant"() <{value = 7 : index}> : () -> index
    %8 = "arith.constant"() <{value = 8 : index}> : () -> index
    %9 = "scf.for"(%0, %1, %8) <{step = #arith_overflowFlags}> ({
      ^bb1(%iv: index):
        %10 = "arith.constant"() <{value = 1 : index}> : () -> index
        %11 = "arith.addi"(%iv, %10) <{overflowFlags = #arith_overflowFlags}> : (index, index) -> index
        %12 = "tensor_ext.rotate"(%arg0, %iv) : (tensor<32xi32>, index) -> tensor<32xi32>
        %13 = "tensor_ext.rotate"(%12, %11) : (tensor<32xi32>, index) -> tensor<32xi32>
        %14 = "arith.addi"(%12, %13) <{overflowFlags = #arith_overflowFlags}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
        "scf.yield"(%14) : (tensor<32xi32>) -> ()
    }) : (tensor<32xi32>) -> ()
    "func.return"(%9) : (tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()