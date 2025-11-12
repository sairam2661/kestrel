"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, index) -> tensor<4xi32>, sym_name = "tensor_shift_and_add"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: index):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.constant"() <{value = 3 : index}> : () -> index
    %3 = "arith.constant"() <{value = 4 : index}> : () -> index
    %4 = "arith.constant"() <{value = 5 : index}> : () -> index
    %5 = "arith.constant"() <{value = 6 : index}> : () -> index
    %6 = "arith.constant"() <{value = 7 : index}> : () -> index
    %7 = "arith.constant"() <{value = 8 : index}> : () -> index
    %8 = "scf.for"(%arg1, %arg1, %4) <{step = 1 : index}> ({
    ^bb1(%iv: index):
      %9 = "tensor.extract"(%arg0, %iv) : (tensor<4xi32>, index) -> i32
      %10 = "arith.addi"(%9, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %11 = "arith.cmpi"(%iv, %0) <{predicate = 2 : i64}> : (index, index) -> i1
      %12 = "arith.select"(%11, %10, %9) : (i1, i32, i32) -> i32
      %13 = "tensor.insert"(%12, %arg0, %iv) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
      %14 = "arith.addi"(%iv, %0) <{overflowFlags = #arith_overflownone}> : (index, index) -> index
      %15 = "arith.cmpi"(%14, %3) <{predicate = 2 : i64}> : (index, index) -> i1
      %16 = "arith.select"(%15, %13, %arg0) : (i1, tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      "scf.yield"(%16) : (tensor<4xi32>) -> ()
    }) : (tensor<4xi32>) -> ()
    "func.return"(%8) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()