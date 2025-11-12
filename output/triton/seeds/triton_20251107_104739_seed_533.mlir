"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "tt.make_range"() <{end = 16 : i32, start = 0 : i32}> : () -> tensor<16xi32>
    %1 = "arith.constant"() <{value = dense<2> : tensor<16xi32>}> : () -> tensor<16xi32>
    %2 = "arith.muli"(%arg0, %1) <{overflowFlags = #arith_overflow_none}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %3 = "arith.cmpi"(%2, %arg1) <{predicate = 1 : i64}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
    %4 = "tt.expand_dims"(%3) <{axis = 1 : i32}> : (tensor<16xi1>) -> tensor<16x1xi1>
    %5 = "arith.constant"() <{value = dense<0> : tensor<16xi32>}> : () -> tensor<16xi32>
    %6 = "arith.addi"(%4, %5) <{overflowFlags = #arith_overflow_none}> : (tensor<16x1xi1>, tensor<16xi32>) -> tensor<16x1xi32>
    %7 = "tt.reduce"() <{keep_dims = false, op = "add"}> ({
    ^bb1(%arg2: tensor<16x1xi32>):
      %8 = "arith.constant"() <{value = dense<1> : tensor<16xi32>}> : () -> tensor<16xi32>
      %9 = "arith.muli"(%arg2, %8) <{overflowFlags = #arith_overflow_none}> : (tensor<16x1xi32>, tensor<16xi32>) -> tensor<16x1xi32>
      "scf.yield"(%9) : (tensor<16x1xi32>) -> ()
    }) : (tensor<16x1xi32>) -> tensor<16xi32>
    "tt.return"(%7) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()