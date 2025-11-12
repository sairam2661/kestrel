"builtin.module"() ({
  "func.func"() <{function_type = (memref<10x10xi32>, memref<10x10xi32>) -> memref<10x10xi32>, sym_name = "matrix_addition"}> ({
  ^bb0(%arg0: memref<10x10xi32>, %arg1: memref<10x10xi32>):
    %0 = "memref.alloc"() <{dynamicSizes = [], memrefType = memref<10x10xi32>, symbolOperands = []}> : () -> memref<10x10xi32>
    "scf.parallel"(%0, %1, %2) <{bounds = [[0, 10], [0, 10], [0, 10]], step = [1, 1, 1], parallelLoops = [0, 1, 2], schedule = #scf_schedule_static}> ({
    ^bb1(%i: index, %j: index, %k: index):
      %3 = "memref.load"(%arg0, %i, %j, %k) : (memref<10x10xi32>, index, index, index) -> i32
      %4 = "memref.load"(%arg1, %i, %j, %k) : (memref<10x10xi32>, index, index, index) -> i32
      %5 = "arith.addi"(%3, %4) : (i32, i32) -> i32
      "memref.store"(%5, %0, %i, %j, %k) : (i32, memref<10x10xi32>, index, index, index)
      "scf.yield"() : () -> ()
    }) : () -> ()
    "func.return"(%0) : (memref<10x10xi32>) -> ()
  }) : () -> ()
}) : () -> ()