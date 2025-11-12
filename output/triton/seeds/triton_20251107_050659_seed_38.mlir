"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<16xi32>, tensor<16xi32>) -> (tensor<16xi32>, tensor<16xi32>), sym_name = "mixed_arith_and_cmp"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<16xi32>, %arg2: tensor<16xi32>):
    %0 = "arith.constant"() <{value = dense<8> : tensor<16xi32>}> : () -> tensor<16xi32>
    %1 = "arith.remsi"(%arg1, %0) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %2 = "arith.cmpi"(%1, %0) <{predicate = 4 : i64}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
    %3 = "arith.divsi"(%arg1, %arg2) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %4 = "arith.subi"(%arg2, %0) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %5 = "arith.select"(%2, %3, %4) : (tensor<16xi1>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %6:2 = "scf.if"(%2) ({
      %7 = "arith.addi"(%arg1, %arg2) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %8 = "arith.muli"(%arg1, %arg2) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "scf.yield"(%7, %8) : (tensor<16xi32>, tensor<16xi32>) -> ()
    }, {
      %9 = "arith.subi"(%arg1, %arg2) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %10 = "arith.remsi"(%arg1, %arg2) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "scf.yield"(%9, %10) : (tensor<16xi32>, tensor<16xi32>) -> ()
    }) : (tensor<16xi1>) -> (tensor<16xi32>, tensor<16xi32>)
    "tt.return"(%5, %6#1) : (tensor<16xi32>, tensor<16xi32>) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "nested_loops_and_cmp"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %2:4 = "scf.for"(%0, %arg0, %arg1, %0, %0, %0, %0) ({
    ^bb0(%arg2: i32, %arg3: i32, %arg4: i32, %arg5: i32, %arg6: i32):
      %3 = "arith.subi"(%arg2, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %4 = "arith.cmpi"(%3, %1) <{predicate = 0 : i64}> : (i32, i32) -> i1
      %5 = "arith.select"(%4, %arg3, %arg5) : (i1, i32, i32) -> i32
      %6 = "arith.addi"(%arg4, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %7 = "arith.cmpi"(%6, %arg1) <{predicate = 0 : i64}> : (i32, i32) -> i1
      %8 = "arith.select"(%7, %arg6, %arg4) : (i1, i32, i32) -> i32
      "scf.yield"(%5, %6, %8, %arg5) : (i32, i32, i32, i32) -> ()
    }) : (i32, i32, i32, i32, i32, i32, i32) -> (i32, i32, i32, i32)
    "tt.return"(%2#1, %2#3) : (i32, i32) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (i32) -> (), sym_name = "reduce_and_cmp"}> ({
  ^bb0(%arg0: i32):
    %0 = "tt.make_range"() <{end = 16 : i32, start = 0 : i32}> : () -> tensor<16xi32>
    %1 = "arith.constant"() <{value = dense<1> : tensor<16xi32>}> : () -> tensor<16xi32>
    %2 = "arith.cmpi"(%0, %1) <{predicate = 4 : i64}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
    %3:2 = "tt.reduce"(%0, %2) ({
    ^bb0(%arg1: tensor<16xi32>, %arg2: tensor<16xi1>):
      %4 = "arith.addi"(%arg1, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "scf.yield"(%4) : (tensor<16xi32>) -> ()
    }) : (tensor<16xi32>, tensor<16xi1>) -> tensor<16xi32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()