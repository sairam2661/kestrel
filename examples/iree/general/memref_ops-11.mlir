"builtin.module"() ({
  "util.func"() <{function_type = (memref<?xi16>, index, index, i16) -> i16, sym_name = "load_store_i16", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: memref<?xi16>, %arg1: index, %arg2: index, %arg3: i16):
    "memref.store"(%arg3, %arg0, %arg1) : (i16, memref<?xi16>, index) -> ()
    %0 = "memref.load"(%arg0, %arg2) : (memref<?xi16>, index) -> i16
    "util.return"(%0) : (i16) -> ()
  }) : () -> ()
}) : () -> ()

