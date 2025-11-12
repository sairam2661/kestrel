"builtin.module"() ({
  "util.func"() <{function_type = (memref<?xf32>) -> memref<5xf32>, sym_name = "cast", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: memref<?xf32>):
    %0 = "memref.cast"(%arg0) : (memref<?xf32>) -> memref<5xf32>
    "util.return"(%0) : (memref<5xf32>) -> ()
  }) : () -> ()
}) : () -> ()

