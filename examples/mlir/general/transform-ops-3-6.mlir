"builtin.module"() ({
  "func.func"() <{function_type = (memref<96x128xi8, 3>, memref<128xi8, 3>) -> (), sym_name = "loop_unroll_and_jam_op", sym_visibility = "private"}> ({
  ^bb0(%arg1: memref<96x128xi8, 3>, %arg2: memref<128xi8, 3>):
    %2 = "arith.constant"() <{value = 96 : index}> : () -> index
    %3 = "arith.constant"() <{value = 1 : index}> : () -> index
    %4 = "arith.constant"() <{value = 128 : index}> : () -> index
    %5 = "arith.constant"() <{value = 0 : index}> : () -> index
    "scf.for"(%5, %4, %3) ({
    ^bb0(%arg3: index):
      %6 = "memref.load"(%arg2, %arg3) : (memref<128xi8, 3>, index) -> i8
      %7 = "scf.for"(%5, %2, %3, %6) ({
      ^bb0(%arg4: index, %arg5: i8):
        %8 = "memref.load"(%arg1, %arg4, %arg3) : (memref<96x128xi8, 3>, index, index) -> i8
        %9 = "arith.addi"(%8, %6) <{overflowFlags = #arith.overflow<none>}> : (i8, i8) -> i8
        "scf.yield"(%9) : (i8) -> ()
      }) : (index, index, index, i8) -> i8
      "memref.store"(%7, %arg2, %arg3) : (i8, memref<128xi8, 3>, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %0 = "transform.structured.match"(%arg0) <{ops = ["memref.store"]}> : (!transform.any_op) -> !transform.any_op
      %1 = "transform.get_parent_op"(%0) <{nth_parent = 1 : i64, op_name = "scf.for"}> : (!transform.any_op) -> !transform.op<"scf.for">
      "transform.loop.unroll_and_jam"(%1) <{factor = 4 : i64}> : (!transform.op<"scf.for">) -> ()
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

