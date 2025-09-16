"builtin.module"() ({
  "func.func"() <{function_type = (memref<2x16x16xf32>, index) -> f32, sym_name = "test_load_nontemporal"}> ({
  ^bb0(%arg1: memref<2x16x16xf32>, %arg2: index):
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = 8 : index}> : () -> index
    %3 = "memref.load"(%arg1, %arg2, %1, %2) <{nontemporal = true}> : (memref<2x16x16xf32>, index, index, index) -> f32
    "func.return"(%3) : (f32) -> ()
  }) : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %0 = "transform.structured.match"(%arg0) <{ops = ["func.func"]}> : (!transform.any_op) -> !transform.any_op
      "transform.apply_patterns"(%0) <{max_iterations = -1 : i64, max_num_rewrites = -1 : i64}> ({
        "transform.apply_patterns.memref.extract_address_computations"() : () -> ()
      }) : (!transform.any_op) -> ()
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

