"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>, sym_name = "tensor_math"}> ({
  ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %1 = "arith.muli"(%0, %arg0) <{overflowFlags = #arith_overflow_signed}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %2 = "tt.reduce"() <{operation = "add", reduction_dim = 0 : i32}> ({
      ^bb1(%arg2: tensor<128xi32>):
        %3 = "arith.xori"(%arg2, %1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
        "scf.yield"(%3) : (tensor<128xi32>) -> tensor<128xi32>
    }) : (tensor<128xi32>) -> tensor<1xi32>
    %4 = "arith.select"(%2, %0, %1) <{predicate = 0 : i64}> : (tensor<1xi32>, tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    "tt.return"(%4) : (tensor<128xi32>) -> ()
  }) : () -> ()
}) : () -> ()