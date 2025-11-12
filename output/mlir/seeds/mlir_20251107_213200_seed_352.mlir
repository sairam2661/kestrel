"builtin.module"() ({
  "spv.module"() <{spirv.target_env = "SPIR-V 1.6 Vulkan"}> ({
    "spv.func"() <{function_type = (f32, f32) -> f32, sym_name = "add_multiply"}> ({
    ^bb0(%arg0: f32, %arg1: f32):
      %0 = "arith.addf"(%arg0, %arg1) : (f32, f32) -> f32
      %1 = "arith.cmpf"(%0, 0.000000e+00) : (f32, f32) -> i1
      %2 = "arith.cmpi"(%1, 0) : (i1, i32) -> i1
      %3 = "scf.if"(%2) ({
        ^bb1(%arg2: i1):
          "spv.ReturnValue"(%0) : (f32) -> ()
      }) : (i1) -> ()
      "spv.ReturnValue"(%0) : (f32) -> ()
    }) : () -> ()
  }) : () -> ()
}) : () -> ()