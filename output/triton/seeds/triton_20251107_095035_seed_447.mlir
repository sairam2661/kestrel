"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<32xi32>, tensor<32xi32>) -> (tensor<32xi32>, i32), sym_name = "mixed_operations"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<32xi32>, %arg2: tensor<32xi32>):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "tt.make_range"() <{start = 0 : index, end = 32 : index, step = 1 : index}> : () -> tensor<32xi32>
    %3 = "arith.select"(%arg0, %arg1, %arg2) : (i32, tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %4 = "scf.if"(%arg0) ({
      %5 = "arith.divsi"(%arg1, %arg2) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "scf.yield"(%5) : (tensor<32xi32>) -> ()
    }, {
      "scf.yield"(%arg1) : (tensor<32xi32>) -> ()
    }) : (i32) -> tensor<32xi32>
    %6 = "arith.xori"(%1, %4) <{overflowFlags = #arith_overflownone}> : (i32, tensor<32xi32>) -> tensor<32xi32>
    "tt.return"(%3, %6) : (tensor<32xi32>, tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()