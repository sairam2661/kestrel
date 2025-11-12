"builtin.module"() ({
  "func.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>, sym_name = "tensor_manipulation_with_nested_loops"}> ({
  ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 32 : index}> : () -> index
    %3 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %4 = "arith.constant"() <{value = -1 : i32}> : () -> i32
    %5 = "scf.for"(%0, %2, %1) ({
    ^bb0(%arg2: index):
      %6 = "scf.for"(%0, %2, %1) ({
      ^bb0(%arg3: index):
        %7 = "tensor.extract"(%arg0, %arg2) : (tensor<32xi32>, index) -> i32
        %8 = "tensor.extract"(%arg1, %arg3) : (tensor<32xi32>, index) -> i32
        %9 = "arith.addi"(%7, %8) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        %10 = "tensor.insert"(%9, %arg0, %arg2) : (i32, tensor<32xi32>, index) -> tensor<32xi32>
        "scf.yield"(%10) : (tensor<32xi32>) -> ()
      }) {lower = 0 : i64, upper = 32 : i64} : (index, index, index) -> tensor<32xi32>
      "scf.yield"(%6) : (tensor<32xi32>) -> ()
    }) {lower = 0 : i64, upper = 32 : i64} : (index, index, index) -> tensor<32xi32>
    "func.return"(%5) : (tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()