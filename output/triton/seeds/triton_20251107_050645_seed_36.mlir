"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> (tensor<16xi32>), sym_name = "mixed_ops_with_for"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "tt.make_range"() <{end = 16 : i32, start = 0 : i32}> : () -> tensor<16xi32>
    %1:4 = "scf.for"(%0, %0, %0, %0) ({
    ^bb0(%arg2: tensor<16xi32>, %arg3: tensor<16xi32>, %arg4: tensor<16xi32>, %arg5: tensor<16xi32>):
      %2 = "arith.remsi"(%arg2, %arg5) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %3 = "arith.divsi"(%arg3, %arg4) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %4 = "arith.subi"(%arg2, %arg3) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %5 = "arith.cmpi"(%arg4, %arg5) <{predicate = 0 : i64}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
      %6 = "arith.select"(%5, %arg2, %arg3) : (tensor<16xi1>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "scf.yield"(%2, %3, %4, %6) : (tensor<16xi32>, tensor<16xi32>, tensor<16xi32>, tensor<16xi32>) -> ()
    }) : (tensor<16xi32>, tensor<16xi32>, tensor<16xi32>, tensor<16xi32>) -> (tensor<16xi32>, tensor<16xi32>, tensor<16xi32>, tensor<16xi32>)
    "tt.return"(%1#2) : (tensor<16xi32>) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "nested_if_with_select"}> ({
  ^bb0(%arg2: i32, %arg3: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.cmpi"(%arg2, %arg3) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %2:2 = "scf.if"(%1) ({
      %3 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %4 = "arith.select"(%1, %3, %arg2) : (i1, i32, i32) -> i32
      "scf.yield"(%4, %3) : (i32, i32) -> ()
    }, {
      %3 = "arith.subi"(%arg2, %arg3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %4 = "arith.select"(%1, %arg2, %3) : (i1, i32, i32) -> i32
      "scf.yield"(%3, %4) : (i32, i32) -> ()
    }) : (i1) -> (i32, i32)
    "tt.return"(%2#0, %2#1) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()