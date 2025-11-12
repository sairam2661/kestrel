"builtin.module"() ({
  "func.func"() <{function_type = (index, i32) -> (i32, f32, tensor<10x10xi32>), sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: index, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (index, i32) -> i32
    %1 = "arith.cmpi"(%0, %arg1, "slt") : (i32, i32) -> i1
    %2 = "scf.if"(%1) ({
      %3 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
      "scf.yield"(%3) : (f32) -> ()
    }, {
      %4 = "arith.constant"() <{value = 2.71 : f32}> : () -> f32
      "scf.yield"(%4) : (f32) -> ()
    }) : (i1) -> f32
    %5 = "arith.constant"() <{value = 10 : index}> : () -> index
    %6 = "memref.alloc"() <{shape = [10, 10], elementType = i32}> : () -> memref<10x10xi32>
    %7 = "scf.for"(%arg0, %5, %5, 1) ({
    ^bb1(%iv: index):
      %8 = "arith.addi"(%iv, %arg1) : (index, i32) -> i32
      %9 = "memref.store"(%8, %6, %iv, %iv) : (i32, memref<10x10xi32>, index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index) -> ()
    "func.return"(%0, %2, %6) : (i32, f32, memref<10x10xi32>) -> ()
  }) : () -> ()
}) : () -> ()