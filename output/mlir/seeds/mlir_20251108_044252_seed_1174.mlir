"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complexOpChain"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
    %1 = "arith.cmpi"(%0, %arg1, "eq") : (i32, i32) -> i1
    %2 = "tosa.const"() <{value = dense<1> : tensor<1xi32>}> : () -> tensor<1xi32>
    %3 = "scf.for"(%arg0 : i32) ({"upper_bound = %arg1 : i32, " 	("step = 1 : i32), "){
      "scf.yield" 	= "scf.yield" 	: () -> ()
    } : (i32) -> ()
    %4 = "transform.yield"() : () -> ()
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
  "transform.named_sequence"() <{function_type = (!transform_op) -> (), sym_name = "transformSeq"}> ({
  ^bb0(%arg0: !transform_op):
    %1 = "transform.apply_pass"(%arg0) <{pass_name = "canonicalize"}> : (!transform_op) -> !transform_op
    "transform.yield"() : () -> ()
  }) : () -> ()
}) {transform.with_named_sequence} : () -> () 

"func.func"() <{function_type = (f32, f32) -> f32, sym_name = "vectorOps"}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %0 = "arith.addf"(%arg0, %arg1) <{fastmath = #arith_fastmath}> : (f32, f32) -> f32
    %1 = "arith.mulf"(%0, %0) <{fastmath = #arith_fastmath}> : (f32, f32) -> f32
    %2 = "arith.constant"() <{value = 2.0 : f32}> : () -> f32
    %3 = "arith.divf"(%1, %2) <{fastmath = #arith_fastmath}> : (f32, f32) -> f32
    "func.return"(%3) : (f32) -> ()
}) : () -> () 

"func.func"() <{function_type = (f32, f32) -> f32, sym_name = "controlFlowOps"}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %0 = "arith.cmpi"(%arg0, %arg1, "gt") : (f32, f32) -> i1
    "scf.cond_br"(%0, 	"then", 	"else") : (i1) -> ()
  ^then:
    %1 = "arith.addf"(%arg0, %arg1) <{fastmath = #arith_fastmath}> : (f32, f32) -> f32
    "scf.yield"(%1) : (f32) -> ()
  ^else:
    %2 = "arith.subf"(%arg0, %arg1) <{fastmath = #arith_fastmath}> : (f32, f32) -> f32
    "scf.yield"(%2) : (f32) -> ()
}) : () -> () 

"func.func"() <{function_type = () -> i32, sym_name = "scalarOps"}> ({
  ^bb0:
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
    "func.return"(%2) : (i32) -> ()
}) : () -> () 

"func.func"() <{function_type = () -> i32, sym_name = "loopOps"}> ({
  ^bb0:
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %2 = "scf.for"(%0 : i32) ({"upper_bound = %1 : i32, " 	("step = 1 : i32), "){
      "scf.yield" 	= "scf.yield" 	: () -> ()
    } : (i32) -> ()
    "func.return"(%2) : (i32) -> ()
}) : () -> () 

"func.func"() <{function_type = (f32, f32) -> f32, sym_name = "mixedOps"}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %0 = "arith.addf"(%arg0, %arg1) <{fastmath = #arith_fastmath}> : (f32, f32) -> f32
    %1 = "arith.subf"(%0, %arg1) <{fastmath = #arith_fastmath}> : (f32, f32) -> f32
    "func.return"(%1) : (f32) -> ()
}) : () -> () 

"func.func"() <{function_type = (i1) -> i1, sym_name = "spirvOps"}> ({
  ^bb0(%arg0: i1):
    %0 = "spirv.GroupNonUniformLogicalAnd"(%arg0) <{execution_scope = #spirv_scope, group_operation = #spirv_group_operation}> : (i1) -> i1
    "func.return"(%0) : (i1) -> ()
}) : () -> () 

"func.func"() <{function_type = () -> index, sym_name = "llvmOps"}> ({
  ^bb0:
    %0 = "llvm.mlir.constant"() <{value = 42 : index}> : () -> index
    "func.return"(%0) : (index) -> ()
}) : () -> () 

"func.func"() <{function_type = () -> i32, sym_name = "transformOps"}> ({
  ^bb0:
    %0 = "transform.yield"() : () -> ()
    "func.return"(%0) : (i32) -> ()
}) : () -> () 

"func.func"() <{function_type = () -> i32, sym_name = "scfOps"}> ({
  ^bb0:
    %0 = "scf.for"() ({"lower_bound = 0 : i32, " 	("upper_bound = 10 : i32), " 	) {
      "scf.yield" 	= "scf.yield" 	: () -> ()
    } : () -> (i32)
    "func.return"(%0) : (i32) -> ()
}) : () -> () 

"func.func"() <{function_type = () -> i32, sym_name = "arithOps"}> ({
  ^bb0:
    %0 = "arith.constant"() <{value = 21 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.muli"(%0, %1) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
    "func.return"(%2) : (i32) -> ()
}) : () -> () 

"func.func"() <{function_type = () -> i32, sym_name = "tosaOps"}> ({
  ^bb0:
    %0 = "tosa.const"() <{value = dense<1> : tensor<1xi32>}> : () -> tensor<1xi32>
    "func.return"(%0) : (i32) -> ()
}) : () -> () 

"func.func"() <{function_type = () -> i32, sym_name = "testOps"}> ({
  ^bb0:
    %0 = "test.constant"() <{value = 1 : i32}> : () -> i32
    "func.return"(%0) : (i32) -> ()
}) : () -> () 

"func.func"() <{function_type = ()