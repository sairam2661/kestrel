"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>, sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<1024xi32>, %arg2: tensor<1024xi32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.select"(%arg0, %arg1, %arg2) : (i32, tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
    %2 = "arith.subi"(%arg1, %arg2) <{overflowFlags = #arith_overflownone}> : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
    %3 = "arith.divsi"(%arg1, %arg2) <{overflowFlags = #arith_overflownone}> : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
    %4 = "arith.cmpi"(%arg1, %arg2) <{predicate = 4 : i64}> : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi1>
    %5 = "scf.if"(%4) ({
      %6 = "arith.addi"(%arg1, %arg2) <{overflowFlags = #arith_overflownone}> : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
      "scf.yield"(%6) : (tensor<1024xi32>) -> ()
    }, {
      "scf.yield"(%arg2) : (tensor<1024xi32>) -> ()
    }) : (tensor<1024xi1>) -> tensor<1024xi32>
    "tt.return"(%5) : (tensor<1024xi32>) -> ()
  }) : () -> ()
}) : () -> ()