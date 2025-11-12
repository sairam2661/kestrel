"builtin.module"() ({
  "func.func"() <{function_type = (memref<4x4xi32>, memref<4x4xi32>) -> memref<4x4xi32>, sym_name = "matrix_add"}> ({
  ^bb0(%arg0: memref<4x4xi32>, %arg1: memref<4x4xi32>):
    %i = "arith.constant"() <{value = 0 : index}> : () -> index
    %j = "arith.constant"() <{value = 0 : index}> : () -> index
    %result = "memref.alloc"() <{sizes = [4, 4], types = [i32]}> : () -> memref<4x4xi32>
    "scf.for"(%i, %j) <{lower_bound = [0, 0], upper_bound = [4, 4], step = [1, 1]}> ({
    ^bb1(%i: index, %j: index):
      %val0 = "memref.load"(%arg0, %i, %j) : (memref<4x4xi32>, index, index) -> i32
      %val1 = "memref.load"(%arg1, %i, %j) : (memref<4x4xi32>, index, index) -> i32
      %sum = "arith.addi"(%val0, %val1) : (i32, i32) -> i32
      "memref.store"(%sum, %result, %i, %j) : (i32, memref<4x4xi32>, index, index)
      "scf.yield"() : () -> ()
    }) : () -> ()
    "func.return"(%result) : (memref<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()