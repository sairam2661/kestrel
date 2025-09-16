"builtin.module"() ({
  "func.func"() <{function_type = (memref<4xf32>, memref<4xf32>) -> (), sym_name = "test_pass"}> ({
  ^bb0(%arg0: memref<4xf32>, %arg1: memref<4xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 4 : index}> : () -> index
    "scf.for"(%0, %2, %1) ({
    ^bb0(%arg2: index):
      %3 = "memref.load"(%arg0, %arg2) : (memref<4xf32>, index) -> f32
      "memref.store"(%3, %arg1, %arg2) : (f32, memref<4xf32>, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

