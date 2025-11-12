"builtin.module"() ({
  "func.func"() <{function_type = (memref<3x4xi32>, memref<3x4xi32>) -> memref<3x4xi32>, sym_name = "complex_spirv_example"}> ({
  ^bb0(%arg0: memref<3x4xi32>, %arg1: memref<3x4xi32>):
    %c0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %c1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %c4 = "arith.constant"() <{value = 4 : index}> : () -> index
    "scf.for"(%c0, %c3, %c1) ({
    ^bb0(%i: index):
      "scf.for"(%c0, %c4, %c1) ({
      ^bb0(%j: index):
        %load0 = "memref.load"(%arg0, %i, %j) : (memref<3x4xi32>, index, index) -> i32
        %load1 = "memref.load"(%arg1, %i, %j) : (memref<3x4xi32>, index, index) -> i32
        %add = "arith.addi"(%load0, %load1) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
        "memref.store"(%add, %arg0, %i, %j) : (i32, memref<3x4xi32>, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"(%arg0) : (memref<3x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()