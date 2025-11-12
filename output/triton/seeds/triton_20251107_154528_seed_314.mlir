"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 32 : i32}], function_type = (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>, sym_name = "xor_add"}> ({
  ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
    %0 = "arith.constant"() <{value = dense<42> : tensor<128xi32>}> : () -> tensor<128xi32>
    %1 = "arith.xori"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %2 = "arith.select"(%1, %0, %arg0) <{predicate = "slt"}> : (tensor<128xi32>, tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %3 = "scf.for"() <{upperBound = 64 : i32, lowerBound = 0 : i32, step = 1 : i32}> ({
      ^bb1(%iv: i32):
        %4 = "arith.addi"(%iv, %iv) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        %5 = "arith.constant"() <{value = dense<1> : tensor<128xi32>}> : () -> tensor<128xi32>
        %6 = "arith.muli"(%2, %5) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
        "scf.yield"() : () -> ()
    }) : () -> ()
    "tt.return"(%2) : (tensor<128xi32>) -> ()
  }) : () -> ()
}) : () -> ()