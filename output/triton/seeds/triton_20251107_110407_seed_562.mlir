"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<4xi32>, !ttg_global_scratch_alloc) -> (), sym_name = "stress_test", sym_visibility = "public"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: !ttg_global_scratch_alloc):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %3 = "arith.subi"(%arg0, %0) <{overflowFlags = #arith_overflow_attrs}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %4 = "arith.subi"(%3, %1) <{overflowFlags = #arith_overflow_attrs}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %5 = "arith.subi"(%4, %2) <{overflowFlags = #arith_overflow_attrs}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %6 = "tt.make_range"() <{start = 0 : i32, end = 4 : i32}> : () -> tensor<4xi32>
    %7 = "tt.reduce"(%5, %6) <{operation = #tt_reduce_attrs}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %8 = "tt.expand_dims"(%7, 0) <{sizes = [1]}> : (tensor<4xi32>) -> tensor<1x4xi32>
    %9 = "tt.addptr"(%arg1, %8) <{alignment = 32 : i32}> : (!ttg_global_scratch_alloc, tensor<1x4xi32>) -> !tt_ptr
    "tt.return"() : () -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()