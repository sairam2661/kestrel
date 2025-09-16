"builtin.module"() ({
  "func.func"() <{function_type = (memref<2xi32>) -> memref<2xi32>, sym_name = "test_side_effects"}> ({
  ^bb0(%arg0: memref<2xi32>):
    %0 = "bufferization.clone"(%arg0) : (memref<2xi32>) -> memref<2xi32>
    "func.return"(%0) : (memref<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()

