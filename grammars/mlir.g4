

// --------------------------------------------------------------------- ;
// Optional types ;
optional_symbol_ref_id                 : symbol_ref_id? ;
optional_func_mod_attrs                : ('attributes' attribute_dict)? ;
optional_arg_list                      : argument_list? ;
optional_fn_result_list                : ('->' function_result_list)? ;
optional_fn_body                       : function_body? ;
optional_symbol_id_list                : symbol_id_list? ;
optional_affine_constraint_conjunction : affine_constraint_conjunction? ;
optional_float_type                    : (':' float_type)? ;
optional_int_type                      : ( ':' (index_type | integer_type) )? ;
optional_type                          : (':' type)? ;
optional_int_literal                   : (':' integer_literal)? ;
optional_ssa_use_list                  : ssa_use_list? ;
optional_prop_dict                     : property_dict? ;
optional_attr_dict                     : attribute_dict? ;
optional_trailing_loc                  : trailing_location? ;
optional_op_result_list                : op_result_list? ;
optional_ssa_and_type_list             : ssa_id_and_type_list? ;
optional_block_arg_list                : block_arg_list? ;
optional_layout_specification          : (',' layout_specification)? ;
optional_memory_space                  : (',' memory_space)? ;
optional_block_label                   : block_label? ;
optional_symbol_use_list               : symbol_use_list? ;
optional_successor_list                : successor_list? ;
optional_region_list                   : region_list? ;
// ----------------------------------------------------------------------
// Modules and functions

// Arguments
named_argument : ssa_id ':' type optional_attr_dict ;
argument_list : (named_argument (',' named_argument)*) | (type optional_attr_dict (',' type optional_attr_dict)*) ;

// Return values
function_result : type optional_attr_dict ;
function_result_list_no_parens : function_result (',' function_result)* ;
function_result_list_parens : ('(' ')') | ('(' function_result_list_no_parens ')') ;
function_result_list : function_result_list_parens | non_function_type ;

// Body
function_body : region ;

// Definition
module : 'module' optional_symbol_ref_id optional_func_mod_attrs region optional_trailing_loc ;
function : 'func.func' symbol_ref_id '(' optional_arg_list ')' optional_fn_result_list optional_func_mod_attrs optional_fn_body optional_trailing_loc ;
generic_module : string_literal '(' argument_list? ')' '(' region ')' attribute_dict? trailing_type trailing_location? ;

// ----------------------------------------------------------------------
// (semi-)affine expressions, maps, and integer sets

dim_id_list : '(' BARE_ID? (',' BARE_ID)* ')' ;
symbol_id_list: '[' BARE_ID? (',' BARE_ID)* ']' ;
dim_and_symbol_id_lists : dim_id_list optional_symbol_id_list ;
symbol_or_const : posneg_integer_literal | ssa_id | BARE_ID ;

dim_use_list    : '(' ssa_use_list? ')' ;
symbol_use_list : '[' ssa_use_list? ']' ;
dim_and_symbol_use_list : dim_use_list optional_symbol_use_list ;

affine_expr : '(' affine_expr ')'
            | affine_expr '+' affine_expr
            | affine_expr '-' affine_expr
            | posneg_integer_literal '*' affine_expr
            | affine_expr '*' posneg_integer_literal
            | affine_expr '&ceildiv&' integer_literal
            | affine_expr '&floordiv&' integer_literal
            | affine_expr '&mod&' integer_literal
            | '-' affine_expr
            | 'symbol' '(' ssa_id ')'
            | posneg_integer_literal
            | ssa_id
            | BARE_ID ;

semi_affine_expr : '(' semi_affine_expr ')'
                 | semi_affine_expr '+' semi_affine_expr
                 | semi_affine_expr '-' semi_affine_expr
                 | symbol_or_const '*' semi_affine_expr
                 | semi_affine_expr '*' symbol_or_const
                 | semi_affine_expr '&ceildiv&' semi_affine_oprnd
                 | semi_affine_expr '&floordiv&' semi_affine_oprnd
                 | semi_affine_expr '&mod&' semi_affine_oprnd
                 | 'symbol' '(' symbol_or_const ')'
                 | symbol_or_const ;
// Second operand for floordiv/ceildiv/mod in semi-affine expressions ;
semi_affine_oprnd : symbol_or_const
                   | '(' semi_affine_expr ')' ;

multi_dim_affine_expr_no_parens : affine_expr (',' affine_expr)* ;
multi_dim_semi_affine_expr_no_parens : semi_affine_expr (',' semi_affine_expr)* ;
multi_dim_affine_expr : '(' multi_dim_affine_expr_no_parens ')' ;
multi_dim_semi_affine_expr : '(' multi_dim_semi_affine_expr_no_parens ')' ;
affine_constraint : affine_expr '>=' DIGIT
                  | affine_expr '==' DIGIT ;
affine_constraint_conjunction : affine_constraint (',' affine_constraint)* ;

affine_map_inline      : 'affine_map' '<' dim_and_symbol_id_lists '->' multi_dim_affine_expr '>' ;
semi_affine_map_inline : dim_and_symbol_id_lists '->' multi_dim_semi_affine_expr ;
integer_set_inline     : dim_and_symbol_id_lists ':' '(' optional_affine_constraint_conjunction ')' ;

// Definition of maps and sets ;
affine_map      : map_or_set_id | affine_map_inline ;
semi_affine_map : map_or_set_id | semi_affine_map_inline ;
integer_set     : map_or_set_id | integer_set_inline ;

affine_map_list : affine_map (',' affine_map)* ;

// ----------------------------------------------------------------------
// General structure and top-level definitions

// Definitions of affine maps/integer sets/aliases are at the top of the file
type_alias_def : type_alias '=' 'type' type ;
affine_map_def      : map_or_set_id '=' affine_map_inline ;
semi_affine_map_def : map_or_set_id '=' semi_affine_map_inline ;
integer_set_def     : map_or_set_id '=' integer_set_inline ;
attribute_alias_def : attribute_alias '=' attribute_value ;
definition : type_alias_def | affine_map_def | semi_affine_map_def | integer_set_def | attribute_alias_def ;
