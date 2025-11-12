"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>, sym_name = "complex_tensor_add_mixed_types"}> ({
    ^bb0(%arg0: tensor<10xi32>, %arg1: tensor<10xi32>):
      %0 = "arith.constant"() <{value = 0 : index}> : () -> index
      %1 = "arith.constant"() <{value = 1 : index}> : () -> index
      %2 = "arith.constant"() <{value = 2 : index}> : () -> index
      %3 = "arith.constant"() <{value = 3 : index}> : () -> index
      %4 = "arith.constant"() <{value = 4 : index}> : () -> index
      %5 = "arith.constant"() <{value = 5 : index}> : () -> index
      %6 = "arith.constant"() <{value = 6 : index}> : () -> index
      %7 = "arith.constant"() <{value = 7 : index}> : () -> index
      %8 = "arith.constant"() <{value = 8 : index}> : () -> index
      %9 = "arith.constant"() <{value = 9 : index}> : () -> index
      %10 = "tensor.extract"(%arg0, %0) : (tensor<10xi32>, index) -> i32
      %11 = "tensor.extract"(%arg0, %1) : (tensor<10xi32>, index) -> i32
      %12 = "tensor.extract"(%arg0, %2) : (tensor<10xi32>, index) -> i32
      %13 = "tensor.extract"(%arg0, %3) : (tensor<10xi32>, index) -> i32
      %14 = "tensor.extract"(%arg0, %4) : (tensor<10xi32>, index) -> i32
      %15 = "tensor.extract"(%arg0, %5) : (tensor<10xi32>, index) -> i32
      %16 = "tensor.extract"(%arg0, %6) : (tensor<10xi32>, index) -> i32
      %17 = "tensor.extract"(%arg0, %7) : (tensor<10xi32>, index) -> i32
      %18 = "tensor.extract"(%arg0, %8) : (tensor<10xi32>, index) -> i32
      %19 = "tensor.extract"(%arg0, %9) : (tensor<10xi32>, index) -> i32
      %20 = "tensor.extract"(%arg1, %0) : (tensor<10xi32>, index) -> i32
      %21 = "tensor.extract"(%arg1, %1) : (tensor<10xi32>, index) -> i32
      %22 = "tensor.extract"(%arg1, %2) : (tensor<10xi32>, index) -> i32
      %23 = "tensor.extract"(%arg1, %3) : (tensor<10xi32>, index) -> i32
      %24 = "tensor.extract"(%arg1, %4) : (tensor<10xi32>, index) -> i32
      %25 = "tensor.extract"(%arg1, %5) : (tensor<10xi32>, index) -> i32
      %26 = "tensor.extract"(%arg1, %6) : (tensor<10xi32>, index) -> i32
      %27 = "tensor.extract"(%arg1, %7) : (tensor<10xi32>, index) -> i32
      %28 = "tensor.extract"(%arg1, %8) : (tensor<10xi32>, index) -> i32
      %29 = "tensor.extract"(%arg1, %9) : (tensor<10xi32>, index) -> i32
      %30 = "arith.addi"(%10, %20) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %31 = "arith.addi"(%11, %21) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %32 = "arith.addi"(%12, %22) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %33 = "arith.addi"(%13, %23) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %34 = "arith.addi"(%14, %24) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %35 = "arith.addi"(%15, %25) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %36 = "arith.addi"(%16, %26) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %37 = "arith.addi"(%17, %27) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %38 = "arith.addi"(%18, %28) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %39 = "arith.addi"(%19, %29) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %40 = "tensor.insert"(%30, %arg0, %0) : (i32, tensor<10xi32>, index) -> tensor<10xi32>
      %41 = "tensor.insert"(%31, %40, %1) : (i32, tensor<10xi32>, index) -> tensor<10xi32>
      %42 = "tensor.insert"(%32, %41, %2) : (i32, tensor<10xi32>, index) -> tensor<10xi32>
      %43 = "tensor.insert"(%33, %42, %3) : (i32, tensor<10xi32>, index) -> tensor<10xi32>
      %44 = "tensor.insert"(%34, %43, %4) : (i32, tensor<10xi32>, index) -> tensor<10xi32>
      %45 = "tensor.insert"(%35, %44, %5) : (i32, tensor<10xi32>, index) -> tensor<10xi32>
      %46 = "tensor.insert"(%36, %45, %6) : (i32, tensor<10xi32>, index) -> tensor<10xi32>
      %47 = "tensor.insert"(%37, %46, %7) : (i32, tensor<10xi32>, index) -> tensor<10xi32>
      %48 = "tensor.insert"(%38, %47, %8) : (i32, tensor<10xi32>, index) -> tensor<10xi32>
      %49 = "tensor.insert"(%39, %48, %9) : (i32, tensor<10xi32>, index) -> tensor<10xi32>
      "func.return"(%49) : (tensor<10xi32>) -> ()
  }) : () -> ()
}) : () -> ()