"builtin.module"() ({
  "func.func"() <{function_type = (i32, memref<10xi32>) -> memref<10xi32>, sym_name = "test_complex_op_chain"}> ({
  ^bb0(%arg0: i32, %arg1: memref<10xi32>):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "memref.alloc"() <{sizes = [10 : index]}>: () -> memref<10xi32>
    "scf.for"() <{lower_bound = 0 : index, upper_bound = 10 : index, step = 1 : index}> ({
      ^bb1(%iv: index):
        %3 = "memref.load"(%arg1, %iv) : (memref<10xi32>, index) -> i32
        %4 = "arith.addi"(%3, %1) : (i32, i32) -> i32
        "memref.store"(%4, %2, %iv) : (i32, memref<10xi32>, index) -> ()
        "scf.yield"() : () -> ()
    }) : (index) -> ()
    "func.return"(%2) : (memref<10xi32>) -> ()
  }) : () -> ()
}) : () -> ()