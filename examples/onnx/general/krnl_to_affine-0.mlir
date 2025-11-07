"builtin.module"() ({
  "func.func"() <{function_type = (memref<f32>) -> memref<f32>, sym_name = "test_lower_degenerate_iterate"}> ({
  ^bb0(%arg0: memref<f32>):
    %0 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<f32>
    "krnl.iterate"() ({
      %1 = "memref.load"(%arg0) : (memref<f32>) -> f32
      "memref.store"(%1, %0) : (f32, memref<f32>) -> ()
      "krnl.terminate"() : () -> ()
    }) {bounds = [], num_optimized_loops = 0 : i64} : () -> ()
    "func.return"(%0) : (memref<f32>) -> ()
  }) : () -> ()
}) : () -> ()

