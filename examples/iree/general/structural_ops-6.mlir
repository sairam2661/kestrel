"builtin.module"() ({
  "util.func"() <{function_type = (i1, memref<?xi8>, memref<?xi8>) -> memref<?xi8>, sym_name = "selectOp", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: i1, %arg1: memref<?xi8>, %arg2: memref<?xi8>):
    %0 = "arith.select"(%arg0, %arg1, %arg2) : (i1, memref<?xi8>, memref<?xi8>) -> memref<?xi8>
    "util.return"(%0) : (memref<?xi8>) -> ()
  }) : () -> ()
}) : () -> ()

