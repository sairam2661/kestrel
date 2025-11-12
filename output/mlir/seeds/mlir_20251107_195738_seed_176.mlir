"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi32>, memref<2xi32>) -> (), sym_name = "transform_test"}> ({
    ^bb0(%arg0: tensor<2xi32>, %arg1: memref<2xi32>):
      %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %2 = "arith.addi"(%0, %1) : (i32, i32) -> i32
      %3 = "arith.constant"() <{value = 0 : index}> : () -> index
      %4 = "arith.constant"() <{value = 2 : index}> : () -> index
      "scf.for"(%3, %4, %1) ({
        ^bb1(%i: index):
          %5 = "memref.load"(%arg1, %i) : (memref<2xi32>, index) -> i32
          %6 = "arith.addi"(%5, %2) : (i32, i32) -> i32
          "memref.store"(%6, %arg1, %i) : (i32, memref<2xi32>, index) -> ()
          "scf.yield"() : () -> ()
      }) : (index) -> ()
      "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()