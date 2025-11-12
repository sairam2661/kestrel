"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<2x2xi32>, memref<4xi32>) -> (i32, tensor<2x2xi32>), sym_name = "mixed_dialect_interactions"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<2x2xi32>, %arg2: memref<4xi32>):
    %0 = "arith.cmpi"(%arg0, %arg0, "ne") : (i32, i32) -> i1
    %1 = "tosa.select"(%0, %arg1, %arg1) : (i1, tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    %2 = "memref.load"(%arg2, %arg0) : (memref<4xi32>, i32) -> i32
    %3 = "arith.addi"(%arg0, %2) : (i32, i32) -> i32
    %4 = "arith.constant"() <{value = 0 : index}> : () -> index
    %5 = "memref.store"(%3, %arg2, %4) : (i32, memref<4xi32>, index) -> ()
    "scf.if"(%0) ({
      ^bb1:
        "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
        "scf.yield"() : () -> ()
    }) {
      "scf.yield"  = "scf.yield" : () -> ()
    }
    : (i1) -> ()
    "func.return"(%3, %1) : (i32, tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()