"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>, i32, i32) -> tensor<32xi32>, sym_name = "complex_op"}> ({
  ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>, %arg2: i32, %arg3: i32):
    %0 = "arith.constant"() <{value = dense<42> : tensor<32xi32>}> : () -> tensor<32xi32>
    %1 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %3 = "arith.cmpi"(%arg2, %arg3) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %4:2 = "scf.if"(%3) ({
      %5 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %6 = "arith.addi"(%5, %0) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "scf.yield"(%6, %1) : (tensor<32xi32>, i32) -> ()
    }, {
      %5 = "arith.remsi"(%arg0, %arg1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "scf.yield"(%5, %2) : (tensor<32xi32>, i32) -> ()
    }) : (i1) -> (tensor<32xi32>, i32)
    %7 = "arith.xori"(%4#0, %0) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    "scf.for"(%1, %arg2, %arg3) ({
    ^bb1(%arg4: i32):
      %8 = "arith.addi"(%arg4, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }) {tt.num_stages = 2 : i32} : (i32, i32, i32) -> ()
    "tt.return"(%7) : (tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()