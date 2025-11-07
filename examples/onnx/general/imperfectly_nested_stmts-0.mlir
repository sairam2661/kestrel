#map = affine_map<() -> (0)>
#map1 = affine_map<() -> (10)>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "simple_imperfectly_nested"}> ({
    %0 = "krnl.define_loops"() {num_loops = 1 : i64} : () -> !krnl.loop
    %1:2 = "krnl.block"(%0) {tile_size = 2 : i64} : (!krnl.loop) -> (!krnl.loop, !krnl.loop)
    "krnl.iterate"(%1#0, %0) ({
    ^bb0(%arg0: index):
      %2 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<10xf32>
      "krnl.iterate"(%1#1) ({
        %3 = "krnl.get_induction_var_value"(%1#1) : (!krnl.loop) -> index
        %4 = "krnl.load"(%2, %3) : (memref<10xf32>, index) -> f32
        %5 = "arith.addf"(%4, %4) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
        "krnl.terminate"() : () -> ()
      }) {bounds = [], num_optimized_loops = 1 : i64} : (!krnl.loop) -> ()
      "memref.dealloc"(%2) : (memref<10xf32>) -> ()
      "krnl.terminate"() : () -> ()
    }) {bounds = [#map, #map1], num_optimized_loops = 1 : i64} : (!krnl.loop, !krnl.loop) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

