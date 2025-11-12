"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 32 : i32}, {tt.divisibility = 16 : i32}], function_type = (tensor<8x32xi8>, i32) -> (i32), sym_name = "unique_kernel", sym_visibility = "public"}> ({
  ^bb0(%arg0: tensor<8x32xi8>, %arg1: i32):
    %0 = "tt.make_range"(%arg1, 0, 8) <{step = 1 : i32}> : (i32, i32, i32) -> tensor<8xi32>
    %1 = "arith.constant"() <{value = dense<42 : i32> : tensor<8xi32>}> : () -> tensor<8xi32>
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflowAttributesAttributes}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %3 = "tt.reduce"(%2) <{axis = 0 : i32}> ({
    ^bb1(%arg2: i32, %arg3: i32):
      %4 = "arith.muli"(%arg2, %arg3) <{overflowFlags = #arith_overflowAttributesAttributes}> : (i32, i32) -> i32
      "tt.reduce.return"(%4) : (i32) -> ()
    }) : (tensor<8xi32>) -> i32
    "scf.if"(%3) ({
    ^bb2(%arg4: i32):
      "scf.yield"() : () -> ()
    }) {
    } : (i32) -> ()
    "tt.return"(%3) : (i32) -> ()
  }) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 4 : i32} : (tensor<8x32xi8>, i32) -> (i32)
}) : () -> ()