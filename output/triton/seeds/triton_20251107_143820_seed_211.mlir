"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>, i32) -> (tensor<16xi32>), sym_name = "complex_control_flow"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>, %arg2: i32):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %2 = "arith.cmpi"(%arg2, %0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %3 = "arith.cmpi"(%arg2, %1) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %4 = "arith.xori"(%2, %3) : (i1, i1) -> i1
    %5:2 = "scf.if"(%4) ({
      %6 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "scf.yield"(%6) : (tensor<16xi32>) -> ()
    }, {
      %7 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "scf.yield"(%7) : (tensor<16xi32>) -> ()
    }) : (i1) -> (tensor<16xi32>)
    %8 = "scf.for"(%0, %1, %arg2) ({
    ^bb1(%arg3: i32):
      %9 = "arith.select"(%4, %arg0, %arg1) : (i1, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %10 = "arith.muli"(%arg3, %9) <{overflowFlags = #arith_overflownone}> : (i32, tensor<16xi32>) -> tensor<16xi32>
      "scf.yield"() : () -> ()
    }) {tt.num_stages = 2 : i32} : (i32, i32, i32) -> ()
    "tt.return"(%5#0) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()