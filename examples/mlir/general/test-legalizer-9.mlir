"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "remap_cloned_region_args"}> ({
    "test.region"() ({
    ^bb0(%arg4: i64, %arg5: i16, %arg6: i64, %arg7: f32):
      "test.invalid"(%arg4, %arg6, %arg7) : (i64, i64, f32) -> ()
    }) {legalizer.should_clone} : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "remap_drop_region"}> ({
    "test.drop_region_op"() ({
    ^bb0(%arg0: i64, %arg1: i16, %arg2: i64, %arg3: f32):
      "test.invalid"(%arg0, %arg2, %arg3) : (i64, i64, f32) -> ()
    }) : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

