"builtin.module"() ({
  "func.func"() <{function_type = () -> index, sym_name = "fold_div_index_neg_rhs"}> ({
    %0 = "arith.constant"() <{value = 10 : index}> : () -> index
    %1 = "arith.constant"() <{value = -4 : index}> : () -> index
    %2 = "shape.div"(%0, %1) : (index, index) -> index
    "func.return"(%2) : (index) -> ()
  }) : () -> ()
}) : () -> ()

