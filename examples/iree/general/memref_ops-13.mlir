"builtin.module"() ({
  "util.func"() <{function_type = (memref<?xi16>, index) -> index, sym_name = "dim_i16", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: memref<?xi16>, %arg1: index):
    %0 = "memref.dim"(%arg0, %arg1) : (memref<?xi16>, index) -> index
    "util.return"(%0) : (index) -> ()
  }) : () -> ()
}) : () -> ()

