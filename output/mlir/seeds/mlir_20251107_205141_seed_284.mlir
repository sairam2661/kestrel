"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<3xi32>, memref<2xf32>) -> (i32, memref<2xf32>), sym_name = "mixed_dialects"}> ({
    ^bb0(%arg0: i32, %arg1: tensor<3xi32>, %arg2: memref<2xf32>):
      %0 = "arith.cmpi"(%arg0, %arg0) <{predicate = "eq"}> : (i32, i32) -> i1
      %1 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
      %2 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %3 = "arith.addi"(%1, %2) : (i32, i32) -> i32
      %4 = "scf.if"(%0) ({
        ^bb1:
          %5 = "arith.addf"(%arg2, %arg2) : (memref<2xf32>, memref<2xf32>) -> memref<2xf32>
          "scf.yield"(%5) : (memref<2xf32>) -> memref<2xf32>
      }) {
        "scf.yield" = #map0
      } : (i1) -> (memref<2xf32>)
      "func.return"(%3, %4) : (i32, memref<2xf32>) -> ()
  }) : () -> ()
}) : () -> ()