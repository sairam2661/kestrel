"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complexOperation"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.cmpi"(%arg0, %arg1, "slt") : (i32, i32) -> i1
      %1 = "arith.cmpi"(%arg0, %arg1, "sgt") : (i32, i32) -> i1
      %2 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %3 = "arith.addf"(%2, %2) : (i32, i32) -> f32
      %4 = "arith.cmpf"(%3, %3, "oeq") : (f32, f32) -> i1
      %5 = "scf.if"(%0) ({
        ^bb1:
          %6 = "arith.addi"(%arg0, %1) : (i32, i32) -> i32
          scf.yield %6 : i32
      }) {
        return
      .


      scf,yield
  .
  return
  }
  : () -> ()
}) : () -> ()



Subgrammar
. attribute_dict: 
   ( 
  ) 
attribute_entry
. attribute_value
.2 
  : 
  (
    )
block          . block_label
  : 
    (
      )
block_label    . BLOCK_ID
  : 
    (
      )
definition_and_module_list
. definition_list
  : 
    (
      )
module_list
. generic_module
  : 
    (
      )
non_function_type
. non_function_type_list_no_parens
  : 
    (
      )
op_result         . op_result_list
  : 
    (
      )
operation         . operation_list
  : 
    (
      )
property_dict
. region         : 
  (
    )
region_list    . region
  : 
    (
      )
ssa_id_and_type      . ssa_id_and_type_list
  : 
    (
      )
ssa_use_list . ssa_use
  : 
    (
      )
standard_attribute
. trailing_type     : 
  (
    )
type              . 
  TYPE_ALIAS 
  : 
    (
      ) 
start
. mlir_file: 
  (
    ) 
string_attribute
. 
  ESCAPED_STRING 
  : 
    (
      ) 
type              . 
  TYPE_ALIAS 
  : 
    (
      ) 
} 
  ) 
  : 
  (
    )