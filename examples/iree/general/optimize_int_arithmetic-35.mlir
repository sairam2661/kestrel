"builtin.module"() ({
  "util.func"() <{function_type = (!hal.buffer_view) -> (i1, i1, i1), sym_name = "hal_buffer_view_rank_min_max", tied_operands = [-1 : index, -1 : index, -1 : index]}> ({
  ^bb0(%arg0: !hal.buffer_view):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 4096 : index}> : () -> index
    %2 = "hal.buffer_view.rank"(%arg0) : (!hal.buffer_view) -> index
    %3 = "arith.cmpi"(%2, %0) <{predicate = 2 : i64}> : (index, index) -> i1
    %4 = "arith.cmpi"(%2, %0) <{predicate = 9 : i64}> : (index, index) -> i1
    %5 = "arith.cmpi"(%2, %1) <{predicate = 8 : i64}> : (index, index) -> i1
    "util.return"(%3, %4, %5) : (i1, i1, i1) -> ()
  }) : () -> ()
}) : () -> ()

