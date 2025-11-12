"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral, sym_name = "torch_cross_dialect_interaction"}> ({
    ^bb0(%arg0: !torch_vtensorliteral, %arg1: !torch_vtensorliteral):
      %0 = "torch.aten.view"(%arg0) <{size = [2, 2, 2]}> : (!torch_vtensorliteral) -> !torch_vtensorliteral
      %1 = "torch.aten.slice.Tensor"(%0, %c0, %c0, %c1) : (!torch_vtensorliteral, i64, i64, i64) -> !torch_vtensorliteral
      %2 = "torch.aten.slice.Tensor"(%1, %c1, %c0, %c1) : (!torch_vtensorliteral, i64, i64, i64) -> !torch_vtensorliteral
      %3 = "torch.aten.eq.Tensor"(%arg1, %2) : (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral
      %4 = "torch.prim.ListConstruct"(%arg0, %arg1, %2, %3) : (!torch_vtensorliteral, !torch_vtensorliteral, !torch_vtensorliteral, !torch_vtensorliteral) -> !torch_list
      %5 = "torch.aten.index_select"(%arg0, %c0, %3) : (!torch_vtensorliteral, i64, !torch_vtensorliteral) -> !torch_vtensorliteral
      %6 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral
      "func.return"(%6) : (!torch_vtensorliteral) -> ()
  }) : () -> ()
}) : () -> ()

#ATTRIBUTES
    = { c0 = "0 : index", c1 = "1 : index" } 

#TYPES
    = { torch_vtensorliteral = "!torch.vtensor<[2,2,2],f32>", torch_list = "!torch.list<!torch.vtensor<[2,2,2],f32>>" } 

#CONSTANTS
    = { c0 = "0 : index", c1 = "1 : index" } 

#FUNCTION_SIGNATURE
    = "func.func" "@"(tensor<2x2x2xf32>, tensor<2x2x2xf32>)  (  {sym_name 
    .tensor_list
       : !torch_list
       }  )  {  }  : tensor<2x2x2xf32> -> tensor<2x2x2xf32> 

#SSA_FORM
    = {  } 

#TYPE_CONSISTENCY
    = {  } 

#REGION_TERMINATOR
    = {  } 

#SYMBOL_REFERENCES
    = {  } 

#DIALECT_CONSTRAINTS
    = {  } 

#SHAPE_DIMENSIONS
    = {  } 

#TYPE_CONVERSIONS
    = {  } 

#LIST_LITERALS
    = {  } 

#CROSS_DIALECT
    = {  } 

#COMPLEXITY
    = {  } 

#UNUSUAL_OPERATIONS
    = {  } 

#EXTREME_PARAMETERS
    = {  } 

#COMPLEX_CONTROL_FLOW
    = {  } 

#TYPE_BOUNDARIES
    = {  } 

#DIALECT_INTERACTIONS
    = {  } 

#VALIDITY
    = {  } 

#CORNER_CASES
    = {  } 

#STRESS_COMPILER
    = {  } 

#PARSEABLE
    = {  } 

#VERIFIED
    = {  } 

#UNIQUE
    = {  } 

#STRUCTURALLY_DIFFERENT
    = {  } 

#TESTS_CORE_CASES
    = {  } 

#STRESSES_COMPILER_PASSES
    = {  } 

#FUZZING_SEED
    = {  } 

#MLIR_GRAMMAR
    = {  } 

#SYNTAX
    = {  } 

#SEMANTICS
    = {  } 

#VALID_MLIR
    = {  } 

#PASSAGES
    = {  } 

#DIALECTS
    = {  } 

#OPERATIONS
    = {  } 

#ATTRIBUTES
    = {  } 

#TYPES
    = {  } 

#CONSTANTS
    = {  } 

#FUNCTION_SIGNATURE
    = {  } 

#SSA_FORM
    = {  } 

#TYPE_CONSISTENCY
    = {  } 

#REGION_TERMINATOR
    = {  } 

#SYMBOL_REFERENCES
    = {  } 

#DIALECT_CONSTRAINTS
    = {  } 

#SHAPE_DIMENSIONS
    = {  } 

#TYPE_CONVERSIONS
    = {  } 

#LIST_LITERALS
    = {  } 

#CROSS_DIALECT
    = {  } 

#COMPLEXITY
    = {  } 

#UNUSUAL_OPERATIONS
    = {  } 

#EXTREME_PARAMETERS
    = {  } 

#COMPLEX_CONTROL_FLOW
    = {  } 

#TYPE_BOUNDARIES
    = {  } 

#DIALECT_INTERACTIONS
    = {  } 

#VALIDITY
    = {  } 

#CORNER_CASES
    = {  } 

#STRESS_COMPILER
    = {  } 

#PARSEABLE
    = {  } 

#VERIFIED
    = {  } 

#UNIQUE
    = {  } 

#STRUCTURALLY_DIFFERENT
    = {  } 

#TESTS_CORE_CASES
    = {  } 

#STRESSES_COMPILER_PASSES
    = {  } 

#FUZZING_SEED
    = {  } 

#MLIR_GRAMMAR
    = {  } 

#SYNTAX
    = {  } 

#SEMANTICS
    = {  } 

#VALID_MLIR
    = {  } 

#PASSAGES
    = {  } 

#DIALECTS
    = {  } 

#OPERATIONS
    = {  } 

#ATTRIBUTES
    = {  } 

#TYPES
    = {  } 

#CONSTANTS
    = {  } 

#FUNCTION_SIGNATURE
    = {  } 

#SSA_FORM
    = {  } 

#TYPE_CONSISTENCY
    = {  } 

#REGION_TERMINATOR
    = {  } 

#SYMBOL_REFERENCES
    = {  } 

#DIALECT_CONSTRAINTS
    = {  } 

#SHAPE_DIMENSIONS
    = {  } 

#TYPE_CONVERSIONS
    = {  } 

#LIST_LITERALS
    = {  } 

#CROSS_DIALECT
    = {  } 

#COMPLEXITY
    = {  } 

#UNUSUAL_OPERATIONS
    = {  } 

#EXTREME_PARAMETERS
    = {  } 

#COMPLEX_CONTROL_FLOW
    = {  } 

#TYPE_BOUNDARIES
    = {  } 

#DIALECT_INTERACTIONS
    = {  } 

#VALIDITY
    = {  } 

#CORNER_CASES
    = {  } 

#STRESS_COMPILER
    = {  } 

#PARSEABLE
    = {  } 

#VERIFIED
    = {  } 

#UNIQUE
    = {  } 

#STRUCTURALLY_DIFFERENT
    = {  } 

#TESTS_CORE_CASES
    = {  } 

#STRESSES_COMPILER_PASSES
    = {  } 

#FUZZING_SEED
    = {  } 

#MLIR_GRAMMAR
    = {  } 

#SYNTAX
    = {  } 

#SEMANTICS
    = {  } 

#VALID_MLIR
    = {  } 

#PASSAGES
    = {  } 

#DIALECTS
    = {  } 

#OPERATIONS
    = {  } 

#ATTRIBUTES
    = {  } 

#TYPES
    = {  } 

#CONSTANTS
    = {  } 

#FUNCTION_SIGNATURE
    = {  } 

#SSA_FORM
    = {  } 

#TYPE_CONSISTENCY
    = {  } 

#REGION_TERMINATOR
    = {  } 

#SYMBOL_REFERENCES
    = {  } 

#DIALECT_CONSTRAINTS
    = {  } 

#SHAPE_DIMENSIONS
    = {  } 

#TYPE_CONVERSIONS
    = {  } 

#LIST_LITERALS
    = {  } 

#CROSS_DIALECT
    = {  } 

#COMPLEXITY
    = {  } 

#UNUSUAL_OPERATIONS
    = {  } 

#EXTREME_PARAMETERS
    = {  } 

#COMPLEX_CONTROL_FLOW
    = {  } 

#TYPE_BOUNDARIES
    = {  } 

#DIALECT_INTERACTIONS
    =