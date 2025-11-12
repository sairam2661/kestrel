"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<i32>, tensor<i32>) -> tensor<i32>, sym_name = "complex_op"}> ({
  ^bb0(%arg0: tensor<i32>, %arg1: tensor<i32>):
    %0 = "tt.reduce"(%arg0, %arg1) <{operation = "add", axis = 0}> : (tensor<i32>, tensor<i32>) -> tensor<i32>
    %1 = "tt.addptr"(%arg0, %0) : (tensor<i32>, tensor<i32>) -> tensor<i32>
    %2 = "tt.global_scratch_alloc"() <{size = 64}> : () -> tensor<i32>
    %3 = "scf.if"(%1) ({
      %4 = "arith.subi"(%0, %1) <{overflowFlags = #arith_overflow_typed}>: (tensor<i32>, tensor<i32>) -> tensor<i32>
      "scf.yield"(%4) : (tensor<i32>) -> ()
    }, {
      %5 = "arith.constant"() <{value = dense<0> : tensor<i32>}> : () -> tensor<i32>
      "scf.yield"(%5) : (tensor<i32>) -> ()
    }) : (tensor<i32>) -> tensor<i32>
    %6 = "tt.expand_dims"(%3, 1) : (tensor<i32>, i32) -> tensor<i32>
    "tt.return"(%6) : (tensor<i32>) -> ()
  }) : () -> ()
}) : () -> ()