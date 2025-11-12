"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>, sym_name = "reduce_and_expand"}> ({
  ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
    %0 = "tt.make_range"() <{start = 0 : i32, end = 128 : i32, step = 1 : i32}> : () -> tensor<128xi32>
    %1 = "tt.expand_dims"(%arg0) <{dim = 1 : i64}> : (tensor<128xi32>) -> tensor<128x1xi32>
    %2 = "tt.expand_dims"(%arg1) <{dim = 1 : i64}> : (tensor<128xi32>) -> tensor<128x1xi32>
    %3 = "arith.addi"(%1, %2) : (tensor<128x1xi32>, tensor<128x1xi32>) -> tensor<128x1xi32>
    %4 = "tt.addptr"(%arg0, %0) <{element_type = i32}> : (tensor<128xi32>, tensor<128xi32>) -> !tt_ptr
    %5 = "tt.reduce"(%3, %4) <{operation = #tt_op_add}> : (tensor<128x1xi32>, !tt_ptr) -> tensor<128xi32>
    "tt.return"(%5) : (tensor<128xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-warps" = 8 : i32} : () -> ()