"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16xi32>) -> i32, sym_name = "test_insert_rotation_for_add"}> ({
  ^bb0(%arg1: tensor<16xi32>):
    %14 = "arith.constant"() <{value = 4 : index}> : () -> index
    %15 = "arith.constant"() <{value = 11 : index}> : () -> index
    %16 = "arith.constant"() <{value = 15 : index}> : () -> index
    %17 = "tensor.extract"(%arg1, %15) : (tensor<16xi32>, index) -> i32
    %18 = "tensor.extract"(%arg1, %16) : (tensor<16xi32>, index) -> i32
    %19 = "arith.addi"(%17, %18) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %20 = "tensor.extract"(%arg1, %14) : (tensor<16xi32>, index) -> i32
    %21 = "arith.addi"(%19, %20) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    "func.return"(%21) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<16xi32>) -> tensor<16xi32>, sym_name = "test_splat"}> ({
  ^bb0(%arg0: tensor<16xi32>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 11 : index}> : () -> index
    %3 = "arith.constant"() <{value = 12 : index}> : () -> index
    %4 = "arith.constant"() <{value = 15 : index}> : () -> index
    %5 = "arith.constant"() <{value = dense<[[2, 3], [4, 5]]> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %6 = "tensor.extract"(%arg0, %2) : (tensor<16xi32>, index) -> i32
    %7 = "tensor.extract"(%5, %1, %1) : (tensor<2x2xi32>, index, index) -> i32
    %8 = "arith.muli"(%6, %7) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %9 = "tensor.extract"(%arg0, %3) : (tensor<16xi32>, index) -> i32
    %10 = "tensor.extract"(%5, %0, %1) : (tensor<2x2xi32>, index, index) -> i32
    %11 = "arith.muli"(%9, %10) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %12 = "arith.addi"(%8, %11) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %13 = "tensor.insert"(%12, %arg0, %1) : (i32, tensor<16xi32>, index) -> tensor<16xi32>
    "func.return"(%13) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()

