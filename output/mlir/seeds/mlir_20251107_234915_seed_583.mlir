"builtin.module"() ({
  "func.func"() <{function_type = (memref<10x10xi32>, memref<10x10xi32>) -> memref<10x10xi32>, sym_name = "complex_concat_and_add"}> ({
  ^bb0(%arg0: memref<10x10xi32>, %arg1: memref<10x10xi32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "tosa.concat"(%arg0, %arg1) <{axis = 0 : i32}> : (memref<10x10xi32>, memref<10x10xi32>) -> memref<20x10xi32>
    %2 = "scf.if"(%0) ({
      ^bb1:
        %3 = "arith.addi"(%1, %1) <{overflowFlags = #arith_overflownone}> : (memref<20x10xi32>, memref<20x10xi32>) -> memref<20x10xi32>
        "scf.yield"(%3) : (memref<20x10xi32>) -> ()
    }, {
      ^bb2:
        "scf.yield"(%1) : (memref<20x10xi32>) -> ()
    }) : (i32) -> memref<20x10xi32>
    "func.return"(%2) : (memref<20x10xi32>) -> ()
  }) : () -> ()
}) : () -> ()