"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "complex_logic"}> ({
    %0 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
    %1 = "tt.make_range"() <{end = 96 : i32, start = 32 : i32}> : () -> tensor<64xi32>
    %2 = "arith.cmpi"(%0, %1, "eq") : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi1>
    %3 = "arith.constant"() <{value = dense<32> : tensor<64xi32>}> : () -> tensor<64xi32>
    %4 = "tt.reduce"() ({
    ^bb0(%acc: tensor<64xi32>, %current: tensor<64xi32>):
      %5 = "arith.addi"(%acc, %current) <{overflowFlags = #arith_overflow_mode}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      "scf.yield"(%5 : tensor<64xi32>) 
    ({}) : (tensor<64xi32>, tensor<64xi32>) -> (tensor<64xi32>)
    %6 = "scf.if"(%2) ({
    ^bb1:
      %7 = "arith.addi"(%3, %0) <{overflowFlags = #arith_overflow_mode}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      "scf.yield"(%7 : tensor<64xi32>)
    ({
    ^bb2:
      %8 = "arith.subi"(%3, %1) <{overflowFlags = #arith_overflow_mode}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      "scf.yield"(%8 : tensor<64xi32>)
    ({}) : tensor<64xi32> -> tensor<64xi32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()}):
  () -> ()
}) : () -> ()}):
  () -> ()


"builtin.module"() ({
  "tt.func"() <{function_type = (!ttgHANDLE) -> (), sym_name = "global_alloc_test", sym_visibility = "public"}> ({
    %0 = "ttg.global_scratch_alloc"() <{size = 128 : i32}> : () -> !ttgHANDLE
    "tt.call"(%0) : (!ttgHANDLE) -> ()
    "tt.return"() : () -> ()
  }) : (!ttgHANDLE) -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32} : (!ttgHANDLE) -> ()

"builtin.module"() ({
  "tt.func"() <{function_type = (!ttgHANDLE) -> (), sym_name = "expand_dims_test", sym_visibility = "public"}> ({
    %0 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
    %1 = "tt.expand_dims"(%0) <{axis = 1 : i32}> : (tensor<64xi32>) -> tensor<64x1xi32>
    "tt.call"(%1) : (tensor<64x1xi32>) -> ()
    "tt.return"() : () -> ()
  }) : (!ttgHANDLE) -> ()
}) {"ttg.num-ctas" = 3 : i32, "ttg.num-warps" = 16 : i32} : (!ttgHANDLE) -> ()