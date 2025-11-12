"builtin.module"() ({
  "func.func"() <{function_type = (memref<10xi32>, memref<10xi32>) -> memref<10xi32>, sym_name = "vector_add"}> ({
    ^bb0(%arg0: memref<10xi32>, %arg1: memref<10xi32>):
      %0 = "arith.constant"() <{value = 0 : index}> : () -> index
      %1 = "arith.constant"() <{value = 9 : index}> : () -> index
      %2 = "arith.constant"() <{value = 1 : index}> : () -> index
      %3 = "memref.alloc"() <{shape = [10], type = i32}> : () -> memref<10xi32>
      %4 = "scf.for"(%0, %1, %2, %3) ({
      ^bb1(%arg2: index, %arg3: memref<10xi32>):
        %5 = "memref.load"(%arg0, %arg2) : (memref<10xi32>, index) -> i32
        %6 = "memref.load"(%arg1, %arg2) : (memref<10xi32>, index) -> i32
        %7 = "arith.addi"(%5, %6) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
        "memref.store"(%7, %arg3, %arg2) : (i32, memref<10xi32>, index) -> ()
        "scf.yield"(%arg3) : (memref<10xi32>) -> ()
      }) : (index, memref<10xi32>, memref<10xi32>) -> memref<10xi32>
      "func.return"(%4) : (memref<10xi32>) -> ()
  }) : () -> ()
}) : () -> ()