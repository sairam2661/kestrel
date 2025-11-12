"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<10xi32>, tensor<10xi32>) -> (tensor<10xi32>, tensor<10xi32>), sym_name = "tensor_manipulation"}> ({
    ^bb0(%arg0: tensor<10xi32>, %arg1: tensor<10xi32>):
      %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 5 : i32}> : () -> i32
      %2 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
      %3 = "arith.subi"(%arg1, %0) <{overflowFlags = #arith_overflownone}> : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
      %4 = "arith.muli"(%2, %1) <{overflowFlags = #arith_overflownone}> : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
      %5 = "arith.divsi"(%4, %0) <{overflowFlags = #arith_overflownone}> : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
      %6 = "arith.remsi"(%4, %0) <{overflowFlags = #arith_overflownone}> : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
      %7 = "arith.cmpi"(%arg0, %arg1) <{predicate = 4 : i64}> : (tensor<10xi32>, tensor<10xi32>) -> i1
      %8 = "arith.select"(%7, %arg0, %arg1) : (i1, tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
      "tt.return"(%5, %8) : (tensor<10xi32>, tensor<10xi32>) -> ()
  }) : () -> ()
}) : () -> ()


"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> (i32), sym_name = "loop_with_reduction"}> ({
    ^bb0(%arg0: i32):
      %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %2 = "scf.for"(%0, %arg0, %1, %0, %0) ({
        ^bb0(%arg1: i32, %arg2: i32):
          %3 = "arith.addi"(%arg2, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
          "scf.yield"(%3) : (i32) -> ()
      }) : (i32) -> (i32)
      "tt.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()


"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<10xi32>) -> (tensor<10xi32>), sym_name = "broadcast_and_expand"}> ({
    ^bb0(%arg0: tensor<10xi32>):
      %0 = "tt.expand_dims"(%arg0) <{axis = 1 : i32}> : (tensor<10xi32>) -> tensor<10x1xi32>
      %1 = "tt.broadcast"(%0) : (tensor<10x1xi32>) -> tensor<10x10xi32>
      "tt.return"(%1) : (tensor<10x10xi32>) -> ()
  }) : () -> ()
}) : () -> ()


"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<10xi32>) -> (tensor<10xi32>), sym_name = "elementwise_assembly"}> ({
    ^bb0(%arg0: tensor<10xi32>):
      %0 = "tt.elementwise_inline_asm"(%arg0) <{asm_string = "asm", constraints = "=r,=r,r", packed_element = 1 : i32, pure = true}> : (tensor<10xi32>) -> tensor<10xi32>
      "tt.return"(%0) : (tensor<10xi32>) -> ()
  }) : () -> ()
}) : () -> ()


"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<10xi32>) -> (tensor<10xi32>), sym_name = "simple_reduction"}> ({
    ^bb0(%arg0: tensor<10xi32>):
      %0 = "tt.reduce"(%arg0) <{operation = "add"}> : (tensor<10xi32>) -> tensor<1xi32>
      "tt.return"(%0) : (tensor<1xi32>) -> ()
  }) : () -> ()
}) : () -> ()