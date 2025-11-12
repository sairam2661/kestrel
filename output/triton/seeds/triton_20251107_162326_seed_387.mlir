"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<64xi32>, tensor<64xi32>) -> (tensor<64xi32>), sym_name = "fuzz_complex"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<64xi32>, %arg2: tensor<64xi32>):
    %0 = "arith.constant"() <{value = 127 : i32}> : () -> i32
    %1 = "arith.cmpi"(%arg0, %0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %2 = "scf.if"(%1) ({
      %3 = "arith.addi"(%arg1, %arg2) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      "scf.yield"(%3) : (tensor<64xi32>) -> ()
    }, {
      %4 = "arith.subi"(%arg1, %arg2) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      "scf.yield"(%4) : (tensor<64xi32>) -> ()
    }) : (i1) -> tensor<64xi32>
    %5 = "arith.xori"(%arg0, %0) : (i32, i32) -> i32
    %6 = "arith.constant"() <{value = 255 : i32}> : () -> i32
    %7 = "arith.remsi"(%5, %6) : (i32, i32) -> i32
    "tt.return"(%2) : (tensor<64xi32>) -> ()
  }) : () -> ()
}) : () -> ()