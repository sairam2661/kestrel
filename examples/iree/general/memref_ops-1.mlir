"builtin.module"() ({
  "util.func"() <{function_type = (memref<4x2xf32>, index) -> f32, sym_name = "verify_invalid_rank_2", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: memref<4x2xf32>, %arg1: index):
    %0 = "memref.load"(%arg0, %arg1, %arg1) : (memref<4x2xf32>, index, index) -> f32
    "util.return"(%0) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

