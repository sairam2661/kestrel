"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, tensor<256xi32>) -> tensor<128xi32>, sym_name = "reduce_and_subtract"}> ({
    ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<256xi32>):
      %0 = "tt.reduce"(%arg0) <{fn = "add", reduction_type = "i32"}> : (tensor<128xi32>) -> i32
      %1 = "tt.reduce"(%arg1) <{fn = "add", reduction_type = "i32"}> : (tensor<256xi32>) -> i32
      %2 = "arith.subi"(%0, %1) : (i32, i32) -> i32
      %3 = "arith.constant"() <{value = 5 : i32}> : () -> i32
      %4 = "arith.addi"(%2, %3) : (i32, i32) -> i32
      %5 = "tt.expand_dims"(%4) <{axis = 0 : i32}> : (i32) -> tensor<1xi32>
      %6 = "tt.broadcast"(%5) : (tensor<1xi32>) -> tensor<128xi32>
      "tt.return"(%6) : (tensor<128xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32} : () -> ()