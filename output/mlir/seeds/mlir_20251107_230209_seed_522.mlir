"builtin.module"() ({
  "spv.func"() <{result_type = "f32", operand_types = ["f32"], sym_name = "test_spv_func", calling_convention = "spirv"}> ({
  ^bb0(%arg0: f32):
    %0 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %1 = "arith.addf"(%arg0, %0) : (f32, f32) -> f32
    %2 = "arith.cmpf"("oeq", %arg0, %0) : (f32, f32) -> i1
    %3 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %4 = "arith.cmpi"("slt", %3, %3) : (i32, i32) -> i1
    "spv.ReturnValue"(%1) : (f32) -> ()
  }) : () -> (f32)
}) : () -> ()