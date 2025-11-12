"builtin.module"() ({
  "func.func"() <{function_type = (memref<10x10xi32>, memref<10x10xi32>) -> memref<10x10xi32>, sym_name = "matrix_multiply"}> ({
  ^bb0(%arg0: memref<10x10xi32>, %arg1: memref<10x10xi32>):
    %0 = "memref.alloc"() <{shape = [10, 10], type = i32}> : () -> memref<10x10xi32>
    "scf.for"(%c0: index) ({
      ^bb0(%i: index):
        "scf.for"(%c0: index) ({
          ^bb0(%j: index):
            %1 = "arith.constant"() <{value = 0 : i32}> : () -> i32
            "scf.for"(%c0: index) ({
              ^bb0(%k: index):
                %2 = "memref.load"(%arg0, %i, %k) : (memref<10x10xi32>, index, index) -> i32
                %3 = "memref.load"(%arg1, %k, %j) : (memref<10x10xi32>, index, index) -> i32
                %4 = "arith.muli"(%2, %3) : (i32, i32) -> i32
                %5 = "memref.load"(%0, %i, %j) : (memref<10x10xi32>, index, index) -> i32
                %6 = "arith.addi"(%4, %5) : (i32, i32) -> i32
                "memref.store"(%6, %0, %i, %j) : (i32, memref<10x10xi32>, index, index) -> ()
                "scf.yield"() : () -> ()
            }) : (index, index, index) -> ()
            "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"(%0) : (memref<10x10xi32>) -> ()
  }) : () -> ()
}) : () -> ()