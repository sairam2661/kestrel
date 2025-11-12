"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %0 = "arith.constant"() <{value = dense<2> : tensor<8xi32>}> : () -> tensor<8xi32>
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflow_flags}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %2 = "arith.subi"(%arg1, %0) <{overflowFlags = #arith_overflow_flags}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %3 = "arith.cmpi"(%1, %2) <{predicate = 4 : i64}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi1>
    %4 = "tt.make_range"() <{start = 0 : i32, end = 8 : i32}> : () -> tensor<8xi32>
    %5 = "scf.if"(%3) ({
      %6 = "arith.addi"(%1, %2) <{overflowFlags = #arith_overflow_flags}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
      "scf.yield"(%6) : (tensor<8xi32>) -> ()
    }, {
      %7 = "arith.subi"(%1, %2) <{overflowFlags = #arith_overflow_flags}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
      "scf.yield"(%7) : (tensor<8xi32>) -> ()
    }) : (tensor<8xi1>) -> tensor<8xi32>
    %8 = "scf.for"(%arg0, %4, %5) ({
    ^bb1(%arg2: tensor<8xi32>, %arg3: tensor<8xi32>):
      %9 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflow_flags}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
      "scf.yield"(%9) : (tensor<8xi32>) -> ()
    }) : (tensor<8xi32>, tensor<8xi32>, tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    "tt.return"(%8) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()