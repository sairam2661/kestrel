"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>, sym_name = "unusual_tensor_compare_and_accumulate"}> ({
  ^bb0(%arg0: tensor<10xi32>, %arg1: tensor<10xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "tensor.extract"(%arg0, %0) : (tensor<10xi32>, index) -> i32
    %4 = "tensor.extract"(%arg1, %0) : (tensor<10xi32>, index) -> i32
    %5 = "arith.cmpi"(%3, %4, "eq") : (i32, i32) -> i1
    %6 = "arith.select"(%5, %3, %4) : (i1, i32, i32) -> i32
    %7 = "arith.addi"(%6, %6) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %8 = "scf.for"(%0, %1, %10) ({
    ^bb1(%indvar: index, %acc: i32):
      %9 = "tensor.extract"(%arg0, %indvar) : (tensor<10xi32>, index) -> i32
      %10 = "tensor.extract"(%arg1, %indvar) : (tensor<10xi32>, index) -> i32
      %11 = "arith.cmpi"(%9, %10, "eq") : (i32, i32) -> i1
      %12 = "arith.select"(%11, %9, %10) : (i1, i32, i32) -> i32
      %13 = "arith.addi"(%acc, %12) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%indvar, %13) : (index, i32) -> ()
    }) : (index, i32) -> (index, i32)
    "func.return"(%8#1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()