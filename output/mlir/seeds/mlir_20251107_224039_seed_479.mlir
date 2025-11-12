"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32) -> f32, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %0 = "arith.addf"(%arg0, %arg1) : (f32, f32) -> f32
    %1 = "arith.cmpi"(%arg0, %arg1, "slt") : (f32, f32) -> i1
    %2 = "arith.select"(%1, %arg0, %arg1) : (i1, f32, f32) -> f32
    "func.return"(%2) : (f32) -> ()
  }) : () -> ()
  "transform.named_sequence"() <{function_type = (!transform_ANY_OP) -> (), sym_name = "__transform_main"}> ({
  ^bb0(%arg0: !transform_ANY_OP):
    %0 = "transform.structured.match"(%arg0) <{ops = ["arith.addf"]}> : (!transform_ANY_OP) -> !transform_ANY_OP
    %1 = "transform.get_region_body"(%0) : (!transform_ANY_OP) -> !transform_region_body
    %2 = "transform.yield"() : () -> ()
  }) : () -> ()
}) {transform.with_named_sequence} : () -> ()