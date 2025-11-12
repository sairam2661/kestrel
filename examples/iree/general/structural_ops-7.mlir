"builtin.module"() ({
  "util.func"() <{function_type = (i1, memref<?xi8>, memref<?xi8>) -> memref<?xi8>, sym_name = "ifOp", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: i1, %arg1: memref<?xi8>, %arg2: memref<?xi8>):
    %0 = "scf.if"(%arg0) ({
      "scf.yield"(%arg1) : (memref<?xi8>) -> ()
    }, {
      "scf.yield"(%arg2) : (memref<?xi8>) -> ()
    }) : (i1) -> memref<?xi8>
    "util.return"(%0) : (memref<?xi8>) -> ()
  }) : () -> ()
}) : () -> ()

