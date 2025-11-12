"builtin.module"() ({
  "func.func"() <{function_type = (memref<2x2xi32>, memref<2x2xi32>) -> memref<2x2xi32>, sym_name = "matrix_addition"}> ({
  ^bb0(%arg0: memref<2x2xi32>, %arg1: memref<2x2xi32>):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    %3 = "arith.constant"() <{value = 1 : index}> : () -> index
    %4 = "memref.alloc"() <{shape = [2, 2], elemental_type = i32}> : () -> memref<2x2xi32>
    %5 = "scf.for"(%2, %0, %1) <{step = 1 : index}> ({
    ^bb1(%i: index):
      %6 = "scf.for"(%2, %0, %1) <{step = 1 : index}> ({
      ^bb2(%j: index):
        %7 = "memref.load"(%arg0, %i, %j) : (memref<2x2xi32>, index, index) -> i32
        %8 = "memref.load"(%arg1, %i, %j) : (memref<2x2xi32>, index, index) -> i32
        %9 = "arith.addi"(%7, %8) : (i32, i32) -> i32
        "memref.store"(%9, %4, %i, %j) : (i32, memref<2x2xi32>, index, index)
        "scf.yield"() : () -> ()
      }) : () -> ()
      "scf.yield"() : () -> ()
    }) : () -> ()
    "func.return"(%4) : (memref<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()