"builtin.module"() ({
  "func.func"() <{function_type = (index, i32, f32) -> f32, sym_name = "complex_op_combination"}> ({
  ^bb0(%arg0: index, %arg1: i32, %arg2: f32):
    %c0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %c1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2 = "arith.constant"() <{value = 2.0 : f32}> : () -> f32
    %cmp = "arith.cmpf"(%arg2, %c2) <{predicate = "oeq"}> : (f32, f32) -> i1
    %select = "arith.select"(%cmp, %arg1, %c1) : (i1, i32, i32) -> i32
    %add = "arith.addi"(%arg0, %select) : (index, i32) -> index
    %cast = "arith.index_cast"(%add) <{to = f32}> : (index) -> f32
    "func.return"(%cast) : (f32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (f32) -> (), sym_name = "test_scalar_func"}> ({
  ^bb0(%arg0: f32):
    %0 = "arith.addf"(%arg0, %arg0) : (f32, f32) -> f32
    "func.return"(%0) : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (f32) -> f32, sym_name = "test_nested_func"}> ({
  ^bb0(%arg0: f32):
    %0 = "func.call"(%arg0) <{callee = @test_scalar_func}> : (f32) -> ()
    "func.return"(%arg0) : (f32) -> f32
  }) : () -> f32
}) : () -> ()