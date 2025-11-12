"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>, sym_name = "complex_reduce"}> ({
  ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>):
    %0 = "tt.reduce"(%arg0, %arg1) <{kind = #ttKindReducerKindAdd}> ({
      ^bb0(%arg2: tensor<32xi32>, %arg3: tensor<32xi32>):
        %1 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflow_none}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
        "scf.yield"(%1) : (tensor<32xi32>) -> ()
    }) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %2 = "arith.subi"(%arg0, %0) <{overflowFlags = #arith_overflow_none}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %3 = "tt.expand_dims"(%2) <{axis = 1}> : (tensor<32xi32>) -> tensor<32x1xi32>
    "tt.return"(%3) : (tensor<32x1xi32>) -> ()
  }) : () -> ()
}) : () -> ()