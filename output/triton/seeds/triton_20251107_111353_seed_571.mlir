"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "reduce_and_if"}> ({
    %0 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
    %1 = "arith.constant"() <{value = dense<1> : tensor<64xi32>}> : () -> tensor<64xi32>
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %3 = "arith.subi"(%2, %1) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %4 = "tt.reduce"(%3, %3) <{kind = #tt_reduce_sum}> : (tensor<64xi32>, tensor<64xi32>) -> i32
    %5 = "arith.cmpi"(%4, %4) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "scf.if"(%5) ({
      %6 = "arith.addi"(%4, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "tt.return"(%6) : (i32) -> ()
    }) {
      "tt.return"="%4" : () -> ()
    }
  : () -> i32
  }) : () -> ()
}) : () -> ()