"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>, sym_name = "tensor_ops", sym_visibility = "public"}> ({
  ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>):
    %0 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %1 = "arith.cmpi"(%0, %arg1) <{predicate = 1 : i64}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi1>
    %2 = "tt.expand_dims"(%1) <{axis = 0 : i32}> : (tensor<32xi1>) -> tensor<1x32xi1>
    %3 = "ttg.global_scratch_alloc"() <{size = 128 : i32}> : () -> memref<128xi32>
    %4 = "arith.constant"() <{value = dense<1> : tensor<32xi32>}> : () -> tensor<32xi32>
    %5 = "arith.addi"(%0, %4) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %6 = "scf.if"(%1) ({
    ^bb0():
      "scf.yield"() : () -> ()
    }) : () -> ()
    %7 = "tt.reduce"(%5) ({
    ^bb0(%arg2: tensor<32xi32>, %arg3: i32):
      %8 = "arith.addi"(%arg3, %arg2) <{overflowFlags = #arith_overflownone}> : (i32, tensor<32xi32>) -> i32
      "tt.yield"(%8) : (i32) -> ()
    }) : (tensor<32xi32>) -> i32
    "tt.return"(%7) : (i32) -> ()
  }) : () -> ()
}) : () -> ()