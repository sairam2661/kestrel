"builtin.module"() ({
  "util.func"() <{function_type = (memref<?xf32>, index, index) -> f32, sym_name = "load_store_f32", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: memref<?xf32>, %arg1: index, %arg2: index):
    %0 = "memref.load"(%arg0, %arg1) : (memref<?xf32>, index) -> f32
    "memref.store"(%0, %arg0, %arg2) : (f32, memref<?xf32>, index) -> ()
    "util.return"(%0) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

