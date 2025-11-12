"builtin.module"() ({
  "func.func"() <{function_type = (memref<10x10xf32>, memref<10x10xf32>) -> memref<10x10xf32>, sym_name = "tensor_add"}> ({
    ^bb0(%arg0: memref<10x10xf32>, %arg1: memref<10x10xf32>):
      %0 = "arith.constant"() <{value = 0 : index}> : () -> index
      %1 = "arith.constant"() <{value = 10 : index}> : () -> index
      %2 = "arith.constant"() <{value = 1 : index}> : () -> index
      "scf.for"(%0, %1, %2) ({
        ^bb1(%i: index):
          "scf.for"(%0, %1, %2) ({
            ^bb2(%j: index):
              %3 = "memref.load"(%arg0, %i, %j) : (memref<10x10xf32>, index, index) -> f32
              %4 = "memref.load"(%arg1, %i, %j) : (memref<10x10xf32>, index, index) -> f32
              %5 = "arith.addf"(%3, %4) : (f32, f32) -> f32
              "memref.store"(%5, %arg0, %i, %j) : (f32, memref<10x10xf32>, index, index) -> ()
              "scf.yield"() : () -> ()
          }) : (index, index, index) -> ()
          "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "func.return"(%arg0) : (memref<10x10xf32>) -> ()
  }) : () -> ()
}) : () -> ()