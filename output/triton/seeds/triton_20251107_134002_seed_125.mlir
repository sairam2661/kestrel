"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>, sym_name = "complex_if_and_reduce"}> ({
  ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>, %arg2: tensor<64xi32>):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "arith.cmpi"(%arg0, %0) <{predicate = 1 : i64}> : (tensor<64xi32>, tensor<64xi32>) -> i1
    %3 = "scf.if"(%2) ({
      %4 = "arith.addi"(%arg1, %arg2) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      "scf.yield"(%4) : (tensor<64xi32>) -> ()
    }, {
      %5 = "arith.subi"(%arg1, %arg2) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      "scf.yield"(%5) : (tensor<64xi32>) -> ()
    }) : (i1) -> tensor<64xi32>
    %6 = "tt.reduce"(%3) <{axis = 0 : i32}> ({
    ^bb0(%arg3: i32, %arg4: i32):
      %7 = "arith.addi"(%arg3, %arg4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "tt.reduce.return"(%7) : (i32) -> ()
    }) : (tensor<64xi32>) -> tensor<1xi32>
    "tt.return"(%6) : (tensor<1xi32>) -> ()
  }) : () -> ()
}) : () -> ()