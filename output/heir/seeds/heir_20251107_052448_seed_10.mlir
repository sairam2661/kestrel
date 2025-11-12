"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>, i1) -> tensor<4xi32>, sym_name = "test_mixed_dialects"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>, %arg2: i1):
    %0 = "arith.constant"() <{value = 2 : index}> : () -> index
    %1 = "arith.constant"() <{value = 3 : index}> : () -> index
    %2 = "scf.if"(%arg2) ({
      %3 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, index) -> i32
      %4 = "arith.addi"(%3, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %5 = "tensor.insert"(%4, %arg0, %0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
      "scf.yield"(%5) : (tensor<4xi32>) -> ()
    }, {
      %6 = "tensor.extract"(%arg1, %1) : (tensor<4xi32>, index) -> i32
      %7 = "arith.subi"(%6, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %8 = "tensor.insert"(%7, %arg1, %1) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
      "scf.yield"(%8) : (tensor<4xi32>) -> ()
    }) : (i1) -> tensor<4xi32>
    "func.return"(%2) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()